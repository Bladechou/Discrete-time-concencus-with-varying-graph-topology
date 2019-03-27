clear all;
close all;

%% Adjacency Matrix for the given problem
a = [0 0 1 0 0 0;
    1 0 0 0 0 0;
    1 1 0 0 0 0;
    0 1 0 0 0 0;
    0 0 1 0 0 0;
    0 0 0 1 1 0];

%% In degree matrix

d = diag([sum(a(1,:));sum(a(2,:));sum(a(3,:));sum(a(4,:));sum(a(5,:));sum(a(6,:))]);


%% Random initial values 

x = (2)*rand(1,6)-1;

for k = 1:50
    
x(k+1,:) = (inv(eye(6)+d))*(eye(6)+a)*x(k,:)';
end

%% Plotting State vs time
figure
plot(0:50,x,'linewidth',2)
legend('1','2','3','4','5','6')
title('State vs. Time')
xlabel('Time');
ylabel('State');