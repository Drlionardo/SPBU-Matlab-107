fun = @(x)x.^2+2.*x-1-sin(x); % function
x0 = [-1 1]; % initial interval
x = fzero(fun,x0)