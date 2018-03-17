%%Name Vishal Kharbanda
%%Class ECE 2nd Year
%%Enroll no. 03110402816
%frequency modulation and demodulation
%Y=MODULATE(X,Fc,Fs,'fm',OPT)
%OPT ia a scalar which specifies the constant of frequency modulation kf
fc=10000;
fs=1000000;
f1=200;
f2=500;
t=0:1/fs:((2/f1)-(1/fs));
x1=cos(2*pi*f1*t);
x2=cos(2*pi*f1*t)+cos(2*pi*f2*t);
kf=2*pi*(fc/fs)*(1/max(max(x1)));
kf=kf*(f1/fc);

%modulation
opt=10*kf;
y1=modulate(x1,fc,fs,'fm',opt);
subplot(5,2,1);
plot(x1);
title('original single tone message, fs=100000');
subplot(5,2,2);
plot(y1);
title('time domain FM, Sngle tone, fc=10000, fm=200 , dev=10*fm');
fx1= abs(fft(y1,1024));
fx1=[fx1(514:1024) fx1(1:513)];
f=(-511*fs/1024):(fs/1024):(512*fs/1024);
subplot(5,2,4); 
plot(f,fx1);
title('freq. description, single tone, dev=10*fm')

%demodulation
x1_recov=demod(y1,fc,fs,'fm',opt); subplot(523); plot(x1_recov);
title('time domain recovered, single tone, dev=10*fm');
% repeat for different frequency deviation
opt= 30*kf;
y1= modulate(x1,fc,fs,'fm',opt); fx1 = abs(fft(y1,1024));
fx1=[fx1(514:1024) fx1(1:513)];subplot(526); plot(f,fx1);
title('freq. description ,single tone, dev=30*fm');
x1_recov=demod(y1,fc,fs,'fm',opt); subplot(525); plot(x1_recov);
title('time domain recovered,single tone,dev=30*fm');

% modulation demodulation for combined signal
opt=10*kf;
y2=modulate(x2,fc,fs,'fm',opt);fx2=abs(fft(y2,1024));
subplot(527);plot(x2);title('combined original,f1=200,f2=500,dev=10*f1');
subplot(528);plot(y2);title('time domain FM, Sngle tone,f1=200,f2=500,fc=10000,fm=200,dev=10*f1');
fx2=[fx2(514:1024) fx2(1:513)];subplot(529); plot(f,fx2);
title('freq. description ,combined, dev=10*fm');
x2_recov=demod(y2,fc,fs,'fm',opt); subplot(5,2,10); plot(x2_recov);
title('time domain recovered,combined,dev=10*f1');