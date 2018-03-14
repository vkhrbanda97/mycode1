%%Experiment 1(b)
%%Name-Vishal Kharbanda
%%Class-ECE-2ndYear
%%Enrollmentno.-03110402816
t=[-10:0.1:10]; 
y=sign(t);
subplot(2,1,1);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('signum function');
subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('Amplitude');
title('signum function');
