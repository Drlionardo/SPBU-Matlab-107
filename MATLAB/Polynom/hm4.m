n = input('n=');
syms x
Poly_symb = x^(2*n) - n*x^(n+1)+n*x^(n-1) - 1;
Poly= sym2poly(Poly_symb);
PolyRoots=roots(Poly)
Derivative=polyder(Poly);
DerivativeRoots=roots(Derivative)
Lia = ismember(DerivativeRoots,PolyRoots)



