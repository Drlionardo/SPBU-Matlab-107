n=25;
M=rand(n,n);
Roots=eig(M);
P=poly(Roots);
Pol2Txt(P)
