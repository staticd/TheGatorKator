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
snap.snip_length = 50e3; % length of cross-correlation snips
snap.noise = zeros(1, snap.snip_length); % initialize noise vector for snips
snap.threshold = 500; % minimum quantized value for snapshots

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Let the user know what the heck we are doing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(['Finding best match with ', num2str(snap.snip_length), ' samples.']);
disp(['That is ', num2str(snap.snip_length/snap.des_fs), ' seconds of data at a ', num2str(snap.des_fs), ' Hz sample rate.']);
disp('****************************');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% initialize snip struct [snip_length, number of snaps]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
snip.threshold = 500/32767; % because we are going to start recording above this value in hardware
snip.nbits = 16;
snip.num_channels = 2;
snip.time_len = snap.snip_length/snap.des_fs;

%% Collect data and decimate and normalize
for x = 1:length(snap_name)
    
    % read wav file into dat
    [dat, ~] = wavread(snap_name{x});
    % decimate dat to desired Fs
    dat = decimate(dat(:, 1), snap.dec_fac, 'FIR');
    % normalize dat --> norm(dat) = (dat - mu)/sigma
    % http://en.wikipedia.org/wiki/Cross-correlation#Normalized_cross-correlation
    dat = (dat - mean(dat))/sqrt(var(dat));
    snap.dat(1:length(dat), x) = dat(:, 1);
end

%% Collect cross correlation vector from microphone

% initialize recorder object and record audio
recObj = audiorecorder(22050, snip.nbits, snip.num_channels);
recObj = audiorecorder;
disp('recording');
disp('****************************');
tic; recordblocking(recObj, snip.time_len); toc
disp('end recording.');
disp('****************************');

% recover audio data from the recorder
snip.dat = getaudiodata(recObj);

% we're going to zero out the first 650 samples because they are garbage
snip.dat(1:650) = 0;

% normalize the snip
snip.dat = (snip.dat - mean(snip.dat))/sqrt(var(snip.dat));

%% Collect cross correlation vectors

% initialize match vector
match = zeros(1, length(snap.dat(1, :)));
% initialize delay vector
delay = zeros(1, length(snap.dat(1, :)));

% adjust size of snip.dat for normalized correlation
temp = padarray(snip.dat, length(snap.dat(:, 1)) - snap.snip_length, 'post');

for snapshot = 1:length(snap.dat(1, :))

    % perform cross correlation
    [r, ~] = xcorr(temp, snap.dat(:, snapshot), 'coeff');
    
    if debug == 1
        plot(r);
        pause;
    end
end

%% Debug section

plots = 2;
signal = 1;

if debug == 2
    
    subplot(plots, 1, 1);
    plot(linspace(0, length(snap.dat(:, signal))*(1/snap.fs), length(snap.dat(:, signal))), snap.dat(:, signal));
    subplot(plots, 1, 2);
    plot(linspace(0, length(snip.dat(:, signal)), length(snip.dat(:, signal))), snip.dat(:, signal));
end

if debug == 3
    
    % plot snip
    plot(snip.dat(650:end));
end

%% find correlation coefficient

% out of memory!!!

% % initialize match vector
% match = zeros(1, length(snap.dat(1, :)));
% 
% % initialize delay vector
% delay = zeros(length(snap.dat(1, :)));
% 
% for snapshot = 1:length(snap.dat(1,:))
% 
%     % adjust size of snip.dat for normalized correlation
%     temp = padarray(snip.dat, length(snap.dat(:, snapshot)) - snap.snip_length, 'post');
%     match(1, x) = bsxfun(@times, snap.dat(:, snapshot), temp')/(norm(temp) * norm(snap.dat(:, snapshot)));
% end





















