clear all;
clc;
%% Random initial values 
x3 = (2)*rand(1,6)-1;

for k = 1:120
    edge = randi(9); % Randomly chosing edges
if edge == 1
    x3(k+1,1) = x3(k,1) + (x3(k,2) - x3(k,1))/2;
    x3(k+1,2) = x3(k,2) - (x3(k,2) - x3(k,1))/2;
    x3(k+1,3) = x3(k,3);
    x3(k+1,4) = x3(k,4);
    x3(k+1,5) = x3(k,5);
    x3(k+1,6) = x3(k,6);
elseif edge == 2
    x3(k+1,2) = x3(k,2) + (x3(k,4) - x3(k,2))/2;
    x3(k+1,4) = x3(k,4) - (x3(k,4) - x3(k,2))/2;
    x3(k+1,1) = x3(k,1);
    x3(k+1,3) = x3(k,3);
    x3(k+1,5) = x3(k,5);
    x3(k+1,6) = x3(k,6); 
elseif edge == 3
    x3(k+1,4) = x3(k,4) + (x3(k,6) - x3(k,4))/2;
    x3(k+1,6) = x3(k,6) - (x3(k,6) - x3(k,4))/2;
    x3(k+1,1) = x3(k,1);
    x3(k+1,2) = x3(k,2);
    x3(k+1,3) = x3(k,3);
    x3(k+1,5) = x3(k,5);
elseif edge == 4
    x3(k+1,6) = x3(k,6) + (x3(k,2) - x3(k,6))/2;
    x3(k+1,2) = x3(k,2) - (x3(k,2) - x3(k,6))/2;
    x3(k+1,3) = x3(k,3);
    x3(k+1,4) = x3(k,4);
    x3(k+1,5) = x3(k,5);
    x3(k+1,1) = x3(k,1);
elseif edge == 5
    x3(k+1,5) = x3(k,5) + (x3(k,6) - x3(k,5))/2;
    x3(k+1,6) = x3(k,6) - (x3(k,6) - x3(k,5))/2;
    x3(k+1,1) = x3(k,1);
    x3(k+1,2) = x3(k,2);
    x3(k+1,3) = x3(k,3);
    x3(k+1,4) = x3(k,4);
elseif edge == 6
    x3(k+1,3) = x3(k,3) + (x3(k,5) - x3(k,3))/2;
    x3(k+1,5) = x3(k,5) - (x3(k,5) - x3(k,3))/2;
    x3(k+1,1) = x3(k,1);
    x3(k+1,2) = x3(k,2);
    x3(k+1,4) = x3(k,4);
    x3(k+1,6) = x3(k,6);
elseif edge == 7
    x3(k+1,2) = x3(k,2) + (x3(k,3) - x3(k,2))/2;
    x3(k+1,3) = x3(k,3) - (x3(k,3) - x3(k,2))/2;
    x3(k+1,1) = x3(k,1);
    x3(k+1,4) = x3(k,4);
    x3(k+1,5) = x3(k,5);
    x3(k+1,6) = x3(k,6);
elseif edge == 8
    x3(k+1,1) = x3(k,1) + (x3(k,3) - x3(k,1))/2;
    x3(k+1,3) = x3(k,3) - (x3(k,3) - x3(k,1))/2;
    x3(k+1,2) = x3(k,2);
    x3(k+1,4) = x3(k,4);
    x3(k+1,5) = x3(k,5);
    x3(k+1,6) = x3(k,6);
elseif edge == 9
    x3(k+1,3) = x3(k,3) + (x3(k,1) - x3(k,3))/2;
    x3(k+1,1) = x3(k,1) - (x3(k,1) - x3(k,3))/2;
    x3(k+1,2) = x3(k,2);
    x3(k+1,4) = x3(k,4);
    x3(k+1,5) = x3(k,5);
    x3(k+1,6) = x3(k,6);
                            
end
end

%% Plotting states vs. time
figure;
plot (1:121,x3,'LineWidth',2)
legend('1','2','3','4','5','6')
title('States vs. Time ')
xlabel('Time');ylabel('Node States');
    