%function plotTandFDomain = plotTandF(Fs)
% key for myself:
% `vector` is a variable to manipulate
% 'function' is function that is called or a model name

% This script will take the `yout` from the
% 'gatorKator_spectrum_visualization' model and output the 'fft' of the
% entire audio sample and the time domain plot of the entire audio sample.

% There are, unfortunately, a few things we have to know about the input
% signal in order to plot the 'fft' and time domain signal.  We have to
% know:
% Fs => sample rate of the input signal

% We will calculate the length of the audio signal based on the length of
% `yout` and `Fs`

% TODO: If the input argument is not given we should try and find it from the
% model!

% I've added the probe box to the model and it outputs the sample time.  It
% turns out that the sample time (T) is just the frame period.  Therefore,
% we can recover the sample period by dividing the frame period by the
% frame size.

% TODO: Get the frame size from the multimedia block
% TODO: Get only the first data point from `T`.  It' a vector right now
% that's pretty big but we'll worry about that later.
Ts = T(1)/1024; % 1024 is hard coded into the 'from multimedia' block
Fs = 1/Ts;

model = 'gatorKator_spectrum_visualization';

%---------------
% Frequency Plot
%---------------
% This code grabbed from the help on 'fft'
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
plot(f,2*abs(Y(1:NFFT/2+1))) % plot the output
title('Fourier Transform of Input Audio Signal F(f)')
xlabel('Frequency (Hz) [0...Fs/2]')
ylabel('|F(f)|')
subplot(1,2,2)
plot(x_axis,yout)
title('Time Domain Plot of Input Audio Signal f(t)')
xlabel('Time (s) [0...length(f(t))]')
ylabel('f(t)')