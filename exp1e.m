%%Experiment 1(e)
%%Name-Vishal Kharbanda
%%Class-ECE-2ndYear
%%Enrollmentno.-03110402816
t=[-10:0.1:10];
y=zeros(length(y),1);
for i=1:length(t)
    if t(i)==0
        y(i)=1;
    end 
end
subplot(2,1,1);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Unit Impluse function');
subplot(2,1,2);
stem(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Unit Impluse function');
