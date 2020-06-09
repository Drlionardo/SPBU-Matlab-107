syms x
f1=x^4+2*x^3-x^2-4*x-2;
g1=x^4-3*x^3-2*x^2-2*x-2
f3=[4 ,-2 ,-16, 5, 9];
g3=[0,2 ,-1, -5, 4,];

f2=x^4-x^3-4*x^2+4*x+1;
g2=x^2-x-1

Pol2Txt(gcd(f1,g1))
Pol2Txt(gcd(f2,g2))
Pol2Txt(gcd(f3,g3))
