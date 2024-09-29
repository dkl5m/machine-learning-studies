% plot Data Exercise
function A = plotData(x,y)
    figure;
    plot(x,y,'rx','MarkerSize',10);             % plot data
    ylabel('Profit in $10,000s');               % set y-axis label
    xlabel('Population of City in 10,000s');    % set x-axis label
end