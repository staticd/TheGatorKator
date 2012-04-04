%%
addpath 'C:\Users\staticd\Documents\My Dropbox\forLeo (2)\project\sample_data';
addpath 'C:\Users\staticd\Documents\My Dropbox\forLeo (2)\project\models_and_scripts';
clear all;
close all;
clc;

%%

snap_name = {'deep_growl_converted.wav', 'Dogsbark.wav', 'THEFORCE.wav', 'Child1.wav'};

%%

for s = 1:length(snap_name)
    
    [yout, Fs, Nbits] = wavread(snap_name{s});

    %---------------
    % Frequency Plot
    %---------------
    % This code grabbed from the help on 'fft'
    Ts = 1/Fs;
    L = length(yout); % calculate the length of `yout`
    NFFT = 2^nextpow2(L); % need to double check what this does
    Y = fft(yout,NFFT)/L; % calculate the 'fft' of `yout`
    f = Fs/2*linspace(0,1,NFFT/2+1); % determine the x axis of the plot
    %-----------------------------------------

    %-----------------
    % Time Domain Plot
    %-----------------

    % Now, I would really like to have a plot that is from 0 to length of the
    % input audio sample.  To do that, I need to plot one sample for every
    % sample time that I have.  L/Fs should give us a vector that is as many
    % seconds as the input sample
    x_axis = 0:Ts:L/Fs-Ts;

    %---------------
    % Create subplot
    %---------------
    subplot(1,2,1)
    plot(f,20*log10(abs(Y(1:NFFT/2+1)))) % plot the output
    title(['FFT of Input Audio Signal: ', snap_name{s}])
    xlabel('Frequency (Hz) [0...Fs/2]')
    ylabel('|F(f)|')
    subplot(1,2,2)
    plot(x_axis,yout)
    title('Time Domain Plot of Input Audio Signal f(t)')
    xlabel('Time (s) [0...length(f(t))]')
    ylabel('f(t)')
    pause;
end