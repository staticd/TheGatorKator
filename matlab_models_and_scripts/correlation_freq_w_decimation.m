% - In this script I would like to develop the algorithm for positive 
% detect of an alligator vocalization.
% - So let's start with the process and see if it works.
% 1. Collect short sample in the time domain.
% 2. Perform FFT
% 3. Correlate the FFT with a known signal
%
% - I think it is just that simple.  Now there should be some complications
% but let's start here and see how it goes.

% I am going to work a little backwards here.  I am going to start by
% collecting a known sample and performing and storing the FFT of that
% signal.

% TODO: either convert mp3 to wav or figure the mp3read errors out
% [Y,FS,NBITS,encoding_info,tag_info,out] = mp3read('sig4.mp3');

%% Overhead
addpath 'C:\Users\staticd\Documents\My Dropbox\forLeo (2)\project\sample_data';
addpath 'C:\Users\staticd\Documents\My Dropbox\forLeo (2)\project\models_and_scripts';

%% For this cell, let's look at the `known' signal
[dat sampRate bitDepth] = wavread('sig1.wav');

% Let's decimate and see if we still get good correlations of the same
% signal.

% Calculate decimation factor.
Fs1 = 8e3; % desired sample rate in Hz
r = round(sampRate/Fs1);
dat = decimate(dat, r, 'FIR');

% Now all of the samples are in variable `dat'
Fs = Fs1;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = length(dat);                     % Length of signal
t = (0:L-1)*T;                % Time vector
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(dat,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);

%% For this cell, let's look at the `unknown' signal
[dat1, sampRate1, bitDepth1] = wavread('sig1.wav');

% Let's decimate and see if we still get good correlations of the same
% signal.

% Calculate decimation factor.
% Fs1 = 8e3; % desired sample rate in Hz
r = round(sampRate/Fs1);
dat1 = decimate(dat, r, 'FIR');

% Generate noise for autocorrelation
% sim_options.SNR = 20;
% len=length(dat1);
% noise_var = 10^(-sim_options.SNR/10) ;
% noise = sqrt(noise_var) * randn(1, len)/sqrt(2);
% dat1 = dat1 + noise';

% Now all of the samples are in variable `dat'
% Fs1 = Fs1;                    % Sampling frequency
T1 = 1/Fs1;                     % Sample time
L1 = length(dat1);                     % Length of signal
t1 = (0:L1-1)*T1;                % Time vector
NFFT1 = 2^nextpow2(L1); % Next power of 2 from length of y
Y1 = fft(dat1,NFFT1)/L1;
f1 = Fs1/2*linspace(0,1,NFFT1/2+1);

[r, lags] = xcorr(Y,Y1);

%% Plots

% Plot single-sided amplitude spectrum.
% figure(1);
% clf
subplot(3, 1, 1);
plot(f,2*abs(Y(1:NFFT/2+1))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')

% Plot single-sided amplitude spectrum.
% figure(2)
% clf
subplot(3, 1, 2);
plot(f1,2*abs(Y1(1:NFFT1/2+1))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')

% figure(3)
% clf
subplot(3, 1, 3);
x_axis = linspace(-length(r)/2,length(r)/2,length(r));
plot(x_axis,abs(r))



















