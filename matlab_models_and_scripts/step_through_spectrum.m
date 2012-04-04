
% Declare useful vairables
sys = 'gatorKator_spectrum_visualization';
command = 'SimulationCommand';

% set number of frames to pause (approximate)
numFrames = 5;

% pause must be turned on
pause on;

% Determine the sample period and frame rate
% TODO: feed this parameter in as an arg
Fs = 48e3;
Ts = 1/Fs;
frame_size = 1024;
frame_rate = frame_size * Ts;


% Now we want to step through the input data just a few frames at a time.
% This means that we want to maybe go 5 * frame_rate seconds and then pause
% and then continue the simulation.  Since we have the simulation set up to
% terminate automatically, we are going to just use a for loop with a very
% large stop value.

% First start the simulation
set_param(sys,command,'start');

for x = 1:1e-6:2
    pause(numFrames * Ts);
    set_param(sys,command,'pause');
    pause;
    set_param(sys,command,'continue');
end

