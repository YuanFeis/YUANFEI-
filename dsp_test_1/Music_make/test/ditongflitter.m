clear 
Fs=1000; %Sampling Frequency

time = 0:(1/Fs):1; %time vector

% Data vector

x = cos(2*pi*60*time)+sin(2*pi*120*time)+randn(size(time));

d=fdesign.lowpass('N,F3dB',5,200,Fs); %lowpass filter specification object

% Invoke Butterworth design method

Hd=design(d,'butter');

y=filter(Hd,x);
figure;
plot(y);