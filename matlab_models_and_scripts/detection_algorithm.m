%% This script is the baseline detection algorithm. %%%%%%%%%%%%%%%%%%%%%%%
% Here is the flow:
% SOI --> decimate to ~8 kHz Fs --> normalize --> 4 kHz LPF |
%
% --> collect snippet --> correlate each snippet with each SOI (16x total)|
% 
% --> find best correlation --> determine relevant statistics and post to |
%
% ... terminal
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
debug = -1;
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
snap.dec_fac = ceil(snap.fs/snap.des_fs); % decimation factor
snap.dec_fs = snap.fs/snap.dec_fac; % this is the actual Fs after decimation
snap.max_snap_len = ceil(max_snap_length/snap.dec_fac); % maximum row length for snap.dat
snap.dat = zeros(snap.max_snap_len, length(snap_name)); % initialize snapshot matrix
snap.SNR = 100; % SNR in dB
snap.snip_length = 2e3; % length of cross-correlation snips
disp(['Finding best match with ', num2str(snap.snip_length), ' sample snippet from each sample signal']);
disp(['Using ', num2str(snap.snip_length/snap.des_fs), ' seconds of data at a ', num2str(snap.fs/snap.dec_fac), ' Hz sample rate']);
disp(['Using SNR of: ', num2str(snap.SNR), 'dB']);
disp('****************************');
snap.noise = zeros(1, snap.max_snap_len); % initialize noise vector for snaps
snap.threshold = 6.1e3/(2^15 - 1); % minimum quantized value for snapshots for 16 bit ADC
snap.corr_vec_plot_size = 20e3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% initialize snip struct [snip_length, number of snaps]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
snip.dat = zeros(snap.snip_length, length(snap.dat(1,:)));

%% Collect data, decimate, normalize, and LPF
for x = 1:length(snap_name)
    
    % read wav file into dat
    [dat, ~] = wavread(snap_name{x});
    % decimate dat to desired Fs
    dat = decimate(dat(:, 1), snap.dec_fac, 'FIR');
    % normalize dat
    dat = (dat - mean(dat))/sqrt(var(dat));
    % filter data
    dat = filter(fourklpf, dat);
    % copy dat into appropriate col of snap.dat
    snap.dat(1:length(dat), x) = dat(:, 1);
end

%% Build noise vector
noise_var = 10^(-snap.SNR/10);
snap.noise(1,:) = sqrt(noise_var) * randn(1, snap.max_snap_len)/sqrt(2);
%% Collect snip data

% In hardware, we aren't going to start taking a snap until the quantized
% sample is above ~500.  So, we want to go ahead and take a X sample
% snip starting from that value.

for col = 1:length(snap.dat(1,:))
    for x = 1:length(snap.dat(:, col))

        % find index of column vector that is greater than the threshold
        % and has significant energy by checking the expected value
        if snap.dat(x, col) > snap.threshold &&  mean(abs(snap.dat(x:(x+snap.snip_length-1), col))) > snap.threshold

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

if debug == 1
    
    % initialize correlation vector storage for debug
    corr_vec = zeros(2*length(snap.dat(:,1))-1, length(snap.dat(1,:)));
end

for snapshot = 1:length(snap.dat(1, :))

    % adjust size of snip.dat for normalized correlation
    temp = padarray(snip.dat(:, snapshot), length(snap.dat(:, snapshot)) - snap.snip_length, 'post');
    % initialize debug comparison
    if debug == 1

        comp_max_corr = 0;
    end
    
    for x = 1:length(snap.dat(1, :))
        
        % add noise to normalized data
        temp1 = snap.dat(:,x) + snap.noise';
        % perform cross correlation
        [r, ~] = xcorr(temp, temp1, 'coeff');
        if debug == 1
            
            max_corr = max(r);
            if max_corr > comp_max_corr
                
                comp_max_corr = max_corr;
                best_corr = r;
            end
        end
        % poplulate match matrix
        [match(x, snapshot), index] = max(r);
        % compute delay
        delay(x, snapshot) = (length(r)/2 - index) * (1/snap.dec_fs);
    end
    
    % populate best correlation for debug plotting
    if debug == 1
        
        corr_vec(:, snapshot) = best_corr;
    end
    % find max value and its index
    [m, I] = max(match(:, snapshot));
    % display best match and appropriate statistics
    disp(['Best match for snip from *', snap_name{snapshot},'* ==> ', snap_name{I}]);
    disp(['-With ', num2str(m*100), '% confidence']);
    disp(['-That''s using ', num2str((snap.snip_length/snap_lengths(snapshot))*100), '% of the original signal in the snip']);
    disp(['-Delay is: ', num2str(delay(I, snapshot)), ' seconds']);
    disp('*');
    
end

%% Debug section

if debug == 1
    
    % initialize correlation plot vector
    corr_plot = ones(snap.corr_vec_plot_size, 1);
    
    for snapshot = 1:length(snap.dat(1, :))
        
        plots = 4;
        subplot(plots, 1, 1);
        plot(linspace(0, length(snap.dat(:, snapshot))*(1/snap.des_fs), length(snap.dat(:, snapshot))), snap.dat(:, snapshot));
        xlabel('time (s)'); 
        ylabel('y(t)'); 
        title(['Time domain plot of ', snap_name{snapshot}]);
        subplot(plots, 1, 2);
        plot(linspace(0, length(snip.dat(:, snapshot)), length(snip.dat(:, snapshot))), snip.dat(:, snapshot));
        xlabel('time (s)'); 
        ylabel('y(t)'); 
        title(['Time domain plot of snippet of ', snap_name{snapshot}]);
        subplot(plots, 1, 3);
        NFFT = 2^nextpow2(length(snap.dat(:, snapshot)));
        f = snap.dec_fs/2 * linspace(0,1,NFFT/2+1);
        y = fft(snap.dat(:, snapshot), NFFT)/length(snap.dat(:, snapshot));
        semilogy(f, 20*log10(2*imag(y(1:NFFT/2+1)))) % 2*[real or imag] because f = (A^2)/4 for two sided and we are doing one sided so we have to multiply by 2
        title(['FFT of Input Audio Signal: ', snap_name{snapshot}])
        xlabel('Frequency (Hz) [0...Fs/2]')
        ylabel('20log10(y) (dB)')
        subplot(plots, 1, 4);
        plot(linspace(-length(corr_vec(:, snapshot))/2, length(corr_vec(:, snapshot))/2, length(corr_vec(:, snapshot))), corr_vec(:, snapshot));
        title(['Correlation vector for best match'])
        ylabel('% match');
        xlabel('lag (s)');
        pause;
    end
end














