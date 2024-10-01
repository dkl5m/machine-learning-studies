function J=computeCost(X,y,theta)

    % initialize some useful values
    m=lenght(y); % number of training examples
    J=0
    predictions=X*theta;
    sqerrors=(predictions-y).^2;
    J=1/(2*m)*sum(sqerrors);
    
end