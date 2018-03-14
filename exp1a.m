%%Experiment 1(a)
%%Name- Vishal Kharbanda
%%Class- ECE 2nd Year
%%Enrollment no.- 03110402816
clear all;
close all;
clc
t=[-10:0.1:10];
a=5; %% Amplitude
y=a.*sin(2*pi.*t);
subplot(2,1,1);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Sinewave');
subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Sinewave');
