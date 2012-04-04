%% This script is the baseline detection algorithm. %%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Set up the environment
addpath 'C:\Users\staticd\Documents\My Dropbox\forLeo (2)\project\sample_data';
addpath 'C:\Users\staticd\Documents\My Dropbox\forLeo (2)\project\models_and_scripts';
clear all;
close all;
clc;
disp('****************************');
disp('starting detection_algorithm');
disp('****************************');
debug = -1 ;
%% Determine storage paramaters and initialize storage elements
snap_name = {'deep_growl_converted.wav', 'Dogsbark.wav', 'THEFORCE.wav', 'Child1.wav'};

%%%%%%%%%%%%%%%%%%%%%%
% find max snap length
%%%%%%%%%%%%%%%%%%%%%%
snap_lengths = zeros(1, length(snap_name));
for x = 1:length(snap_name)
    
    snap_lengths(x) = max(wavread(snap_name{x}, 'size'));    
end

max_snap_length = max(snap_lengths);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% initialize struct for snap values and parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
snap.des_fs = 8e3; % desired sample rate in Hz
snap.fs = 22050; % we know what the Fs is of all our samples
snap.dec_fac = round(snap.fs/snap.des_fs); % decimation factor
snap.max_snap_len = ceil(max_snap_length/snap.dec_fac); % maximum row length for snap.dat
snap.dat = zeros(snap.max_snap_len, length(snap_name)); % initialize snapshot matrix
snap.SNR = -20; % SNR in dB
snap.snip_length = 23e3; % length of cross-correlation snips
disp(['Finding best match with ', num2str(snap.snip_length), ' samples.']);
disp(['That is ', num2str(snap.snip_length/snap.des_fs), ' seconds of data at a ', num2str(snap.des_fs), ' Hz sample rate.']);
disp('****************************');
snap.noise = zeros(1, snap.snip_length); % initialize noise vector for snips
snap.threshold = 500; % minimum quantized value for snapshots

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% initialize snip struct [snip_length, number of snaps]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
snip.dat = zeros(snap.snip_length, length(snap.dat(1,:)));

%% Collect data, decimate, and scale to int16
for x = 1:length(snap_name)
    
    % read wav file into dat
    [dat, ~] = wavread(snap_name{x});
    % decimate dat to desired Fs
    dat = decimate(dat(:, 1), snap.dec_fac, 'FIR');
    % find the max value of tmp
    m = max(dat);
    % scale tmp to 16 bit int
    dat = int16((dat/m) * 32767);
    % copy dat into appropriate col of snap.dat
    snap.dat(1:length(dat), x) = dat(:, 1);
end

%% Build noise vector
noise_var = 10^(-snap.SNR/10);
snap.noise(1,:) = int16(sqrt(noise_var) * randn(1, snap.snip_length)/sqrt(2));
%% Collect snip data

% In hardware, we aren't going to start taking a snap until the quantized
% sample is above ~500.  So, we want to go ahead and take a 1000 sample
% snip starting from that value.

for col = 1:length(snap.dat(1,:))
    for x = 1:length(snap.dat(:, col))

        % find index of column vector that is greater than the threshold
        % and has significant energy by checking the expected value
        if snap.dat(x, col) > 500 &&  mean(abs(snap.dat(x:(x+snap.snip_length-1), col))) > 500

            % assign snip to its column in snip.dat with additive noise
            snip.dat(:, col) = snap.dat(x:(x+snap.snip_length-1), col);
            break;
        end
    end
end
%% Collect cross correlation vectors

% initialize match vector
match = zeros(length(snap.dat(1, :)));
% initialize delay vector
delay = zeros(length(snap.dat(1, :)));

for snapshot = 1:length(snap.dat(1, :))

    % adjust size of snip.dat for normalized correlation
    temp = padarray(snip.dat(:, snapshot), length(snap.dat(:, snapshot)) - snap.snip_length, 'post');

    for x = 1:length(snap.dat(1, :))
        % perform cross correlation
        [r, ~] = xcorr(temp, snap.dat(:, x), 'coeff');
        if debug == 1
            plot(r(1:length(r),1),'DisplayName','r(1:length(r),1)','YDataSource','r(1:length(r),1)');figure(gcf)
            pause;
        end
        [match(x, snapshot), index] = max(r);
        delay(x, snapshot) = (length(r)/2 - index) * (1/snap.des_fs);
    end
    
    [m, I] = max(match(:, snapshot));
    disp(['Best match for snip from *', snap_name{snapshot},'* ==> ', snap_name{I}]);
    disp(['-With ', num2str(m*100), '% confidence']);
    disp(['-That''s using ', num2str((snap.snip_length/snap_lengths(snapshot))*100), '% of the original signal in the snip']);
    disp(['-Delay is: ', num2str(delay(I, snapshot)), ' seconds']);
    disp('*');
    
end

%% Debug section

plots = 2;
signal = 1;

if debug == 1
    
    subplot(plots, 1, 1);
    plot(linspace(0, length(snap.dat(:, signal))*(1/snap.fs), length(snap.dat(:, signal))), snap.dat(:, signal));
    subplot(plots, 1, 2);
    plot(linspace(0, length(snip.dat(:, signal)), length(snip.dat(:, signal))), snip.dat(:, signal));
end

if debug == 2
end





















