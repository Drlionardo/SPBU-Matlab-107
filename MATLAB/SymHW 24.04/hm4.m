syms x
%% 1
first = sqrt(1-x^2)/x^2;
disp(simplify(int(first)));
%% 2
second = 1/(sin(x))^3;
disp(simplify(int(second)));
%% 3
third = log(sin(x));
disp(simplify(int(third,0,pi/2)));