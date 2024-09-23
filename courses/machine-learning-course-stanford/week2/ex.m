%% Ex1.m
data = load('ex1data1.txt');    % read comma separated data
X = data(:,1); y = data(:,2);
m = length(y);                  % number of training examples

plot(x,y,'rx','MarkerSize',10);             % plot data
ylabel('Profit in $10,000s');               % set y-axis label
xlabel('Population of City in 10,000s');    % set x-axis label

