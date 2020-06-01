%% 
fun = @(x) sin(exp(x)); % function
x0 = [-3 2.9]; % initial interval
x = fzero(fun,x0)
%% 
fun = @(x) sin(x.*(1-x)); % function
x0 = [0 2*pi]; % initial interval
x = fzero(fun,x0)
%% 
fun = @(x) x.*sin(x) - cos(x); % function
x0 = [0 3*pi]; % initial interval
x = fzero(fun,x0)