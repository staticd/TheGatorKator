%% Here we want to do a time domain correlation and see what we get.
% -The main idea here is that if we take just the portion of the signal
% that has significant amplitude and correlate that with the original
% signal we should notice correlation spikes everwhere else where there is
% also a "copy" of that amplitude.

%% Overhead
addpath 'C:\Users\staticd\Documents\My Dropbox\forLeo (2)\project\sample_data';
addpath 'C:\Users\staticd\Documents\My Dropbox\forLeo (2)\project\models_and_scripts';
clear all;
close all;
clc;
plots = 3;
%% Create portion with significant amplitude.
[dat, sampRate, bitDepth] = wavread('THEFORCE.wav');

%%
%%% To further our understanding, we are going to decimate to Fs = 8 kHz
%%% because that is the sample rate we are going to use in hardware and
%%% then we are going to look into scaling the data to 16 bit integer to
%%% translate the data into what our quantized signal will look like in
%%% hardware.

% Calculate decimation factor.
Fs1 = 8e3; % desired sample rate in Hz
r = round(sampRate/Fs1);
dat = decimate(dat, r, 'FIR');
%%
%%% Now we want to take a look at the effects when we scale the signal to
%%% better line up with what we'll be doing in hardware.

% first divide each sample by the maximum value in the signal and then
% multiply by 32767
m = max(dat);
dat = uint16((dat/m)*32767);
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% what happens when you double dat?
% dat = [dat_temp; dat_temp];
%%%% Looked for values above 0.9 in autocorrelation vector.  Found 2 values
%%%% greater than 0.91.  So, if we double the length, we should get more
%%%% than one correlation coefficient that is greater than or equal to
%%%% 0.90.  Another interesting point is that the delay value was
%%%% correlated against the first occurence of the smaller autocorrelation
%%%% vector.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Plots
% time domain plot
ax(1) = subplot(plots,1,1);
plot(linspace(0,length(dat)*(1/sampRate), length(dat)), dat);
xlabel('Time (s)');
ylabel('Amplitude (V)');

% sample number plot
ax(2) = subplot(plots,1,2);
plot(linspace(0, length(dat), length(dat)), dat);
xlabel('Sample Number (n)');
ylabel('Amplitude (V)');
% link plots 1 and 2
% linkaxes(ax, 'x');
%% Analysis
% Take a look at the plot and figure out what the sample numbers are that
% we need to get in order to examine the correlation properties.
N1 = 1e4;
N2 = 1.1e4;
temp = dat(N1:N2);
% pad array with zeros to utilize the normalized output of xcorr
snip = padarray(temp, length(dat) - (N2 - N1) - 1, 'post');
%%
%%% Now let's add some noise, just for fun! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% It seems we need an SNR of at least 1.1 dB to get a good
%%%% autocorrelation most of the time. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sim_options.SNR = 17;
len = length(dat);
noise_var = 10^(-sim_options.SNR/10) ;
noise = uint16(sqrt(noise_var) * randn(1, len)/sqrt(2));
dat = dat + noise';
%%
[r, lags] = xcorr(snip, dat, 'coeff');
% scale output, if correlation vectors are of different size
% r = r/max(r);
x_axis = linspace(-length(r)/2,length(r)/2,length(r));
subplot(3,1,3);
plot(x_axis,abs(r));

%% Calculate delay of rx signal

% Now find the index of the maximum value and display the lag in seconds to
% find the time difference in seconds.
[C, I] = max(r);
delay = (length(r)/2 - I) * (1/sampRate);
% could be leading or lagging but we'll consider the delay to circular and
% just look at the plots to get a feel for the delay.
disp(['Delay is: ', num2str(delay), ' seconds']);
