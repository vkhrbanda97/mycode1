%%Experiment-1(c)
%%Name-Vishal Kharbanda
%%Class-ECE-2nd-Year
%%Enrollmentno.-03110402816
clear all;
close all;
clc
t=[-10:0.1:10];
y=square(t,68);
subplot(2,1,1);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Square wave of 68% duty cycle');
subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Square wave of 68% duty cycle');
