%%Name Vishal Kharbanda
%%Class ECE 2nd Year
%%Enroll no. 03110402816
fc=10000;
fs=100000;
f1=200;
f2=500;
t=0:1/fs:((2/f1)-(1/fs));
x1=cos(2*pi*f1*t);
x2=cos(2*pi*t)+cos(2*pi*f2*t);
kp=pi/max(max(x1));
%Modulation
opt=kp/6;
y1=modulate(x1,fc,fs,'pm',opt);
subplot(5,2,1);
plot(x1);
title('original single tone message, fs=100000')
subplot(522);plot(y1);title('time domain PM, single tone,fc=10000,fm=200,dev=pi/6')
fx1=abs(fft(y1,1024));
fx1=[fx1(514:1024) fx1(1:513)];
f=(-511*fs/1024):(fs/1024):(512*fs/1024);
subplot(5,2,4);
plot(f,fx1);
title('freq. description, single tone, dev=pi/6');
%Demodulation
x1_recov=demod(y1,fc,fs,'pm',opt);
subplot(5,2,3);
plot(x1_recov);
title('time domain recovered, single tone, dev=pi/6');
%Repeat for different phase deviation
opt=kp/3;
y1=modulate(x1,fc,fs,'pm',opt);
fx1=abs(fft(y1,1024));
fx1=[fx1(514:1024) fx1(1:513)];
subplot(5,2,6);
plot(f,fx1);
title('freq., description, single tone, dev=pi/3')
x1_recov=demod(y1,fc,fs,'pm',opt);
subplot(5,2,5);
plot(x1_recov);
title('time domain recovered, single tone, dev=pi/3')
%modulation demodulation for combined signal
opt=kp/6;
y2=modulate(x2,fc,fs,'pm',opt);
fx2=abs(fft(y2,1024));
subplot(5,2,7);
plot(x2);
title('combined original, f1=200, f2=500,dev=pi/6');
subplot(5,2,8);
plot(y2);
title('combined modulated, f1=200, f2=500, fc=10000, dev=pi/6')
fx2=[fx2(514:1024) fx2(1:513)];
subplot(5,2,10);
plot(f,fx2);
title('frequency description, combined, dev=pi/6')
x2_recov=demod(y2,fc,fs,'pm',opt);
subplot(5,2,9);
plot(x2_recov);
title('time domain recovered combined dev=pi/6')