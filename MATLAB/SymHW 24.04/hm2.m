%% 1
disp(limit( x.*exp(-x)),inf);
%% 2
Exp = tan(x).^(tan(2.*x));
disp(limit(Exp, pi/4));
%% 3
Exp3 = atan(1./(1-x));
disp(limit(Exp3, 'x', 1, 'right')); %lim x->1+0