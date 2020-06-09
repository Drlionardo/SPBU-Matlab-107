%% 
syms x
Poly1 = x^5 + 4*x.^4 - 2.*x.^3 - 14.*x.^2 - 3.*x - 18;
Factor=factor(Poly1);
disp(Factor);
%% 
syms x y
Poly2 = x^3 + y*x.^2 + x.^2 - 2.*x.*y.^2 +x.*y-2.*y^2;
Factor2=factor(Poly2);
disp(Factor2);
