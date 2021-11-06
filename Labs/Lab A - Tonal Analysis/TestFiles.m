function [] = TestFiles()
% This function creates four sine waves of different funtamental
% frequencies

% Define fundamental frequencies
A_f0 = 440;  % A4
B_f0 = 196;  % G3
C_f0 = 87.3; % F2
D_f0 = 784;  % G5

% Time specifications:
Fs = 44100;                  % samples per second
T = 1/Fs;                    % seconds per sample
time = 2;                    % time in seconds for playing stest sound
t = (0:T:time);              % vector of time samples for sine wave

% Creat sine waves:
A_x = sin(2*pi*A_f0*t);
B_x = sin(2*pi*B_f0*t);
C_x = sin(2*pi*C_f0*t);
D_x = sin(2*pi*D_f0*t);

tune = [A_x B_x C_x D_x];

% Plot the signals versus time:
% Plot A
figure(1);
plot(t,A_x);
xlabel('time (in seconds)');
title('Signal versus Time');

% Plot B
figure(2);
plot(t,B_x);
xlabel('time (in seconds)');
title('Signal versus Time');

% Plot C
figure(3);
plot(t,C_x);
xlabel('time (in seconds)');
title('Signal versus Time');

% Plot D
figure(4);
plot(t,D_x);
xlabel('time (in seconds)');
title('Signal versus Time');

% Sound all test signals one by one
soundsc(A_x, Fs);
pause(2);
soundsc(B_x, Fs);
pause(2);
soundsc(C_x, Fs);
pause(2);
soundsc(D_x, Fs);

% soundsc(tune, Fs);

% Create test files for signals
audiowrite('Sine_A4.wav', A_x, Fs);
audiowrite('Sine_G3.wav', B_x, Fs);
audiowrite('Sine_F2.wav', C_x, Fs);
audiowrite('Sine_G5.wav', D_x, Fs);

end

