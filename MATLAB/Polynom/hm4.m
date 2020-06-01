n = input('n=');
syms x
my_poly_symb = x^(2*n) - n*x^(n+1)+n*x^(n-1) - 1;
c=coeffs(my_poly_symb,'All');
AllRoots=double(roots(c));
U = unique(AllRoots);
U(1<histc(AllRoots,unique(AllRoots)))
fplot(my_poly_symb,[min(U),max(U)])
%Почему-то histc криво работате с комплексными числами, для n=3 все ок