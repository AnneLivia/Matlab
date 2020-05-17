% this function adds an echo to an audio
% input is a column vector with values between -1 and 1 representing a time series of digitized sound data
% fs is the sampling rate specifying how many samples we have in the data each second
% delay represents the delay of the echo in seconds (the echo should starts after delay seconds have passed from the start of the audio signal)
% amp is the amplification of the echo which normally should be a value less than 1, since the echo is tipically not as loud as the original signal
% the output is a column vector containing the original signam with the eho superimposed
% the output is going to be longer than the input if the delay is not zero
% 
function output = echo_gen(input, fs, delay, amp)
    sizeaudio = round(delay / (1/fs));
    output = [input; zeros(sizeaudio, 1)];
    aux = [zeros(sizeaudio, 1); input.*amp];
    output = aux + output;
    % verifing if extrapolate limit
    p1 = sum((output > 1), 'all');
    p2 = sum((output < -1), 'all');
    if (p1+p2 >= 1)
        maxx = max(abs(output));
        for i = 1:max(size(output))
            output(i) = output(i)/maxx;
        end
    end
end 



% Load splat which adds y and Fs to the workspace
% load splat
% Call echo_gen to create the new audio data
% output = echo_gen(y, 8192, 0.3, 0.5);

% Create a time axis. The time between points is 1/Fs;
% dt = 1/Fs;
% t = 0:dt:dt*(length(output)-1);
% Plot the new data to see visualize the echo
% plot(t, output)

% sound (output, Fs) % Uncomment in MATLAB to listen to the new sound data