%%Experiment-1(d)
%%Name-Vishal Kharbanda
%%Class-ECE-2nd-Year
%%Enrollmentno.-03110402816
t=[-10:0.1:10];
y=zeros(length(t),1);
for i=1:length(t)
    if t(i)>0
        y(i)=1;
    end 
end
subplot(2,1,1);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Unit step')
subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('Amplitude');
