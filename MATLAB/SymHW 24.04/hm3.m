syms x

%% 
first = atan(x)./2 - x./(2.*(1+x.^2).^2); 
disp(simplify(diff(first)));
%% 
second = 3.*x^4 -14.*x.^3 + 12.*x.^2 + 24.*x + 6;
disp(simplify(diff(second)));
%% 
third = (sin(3.*x)-cos(3.*x)).^2;
disp(simplify(diff(third)));