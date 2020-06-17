n=25;

M=rand(n,n);
Roots=eig(M);
P=poly(Roots);
Pol2Txt(P)

Values= polyval(P,M);
Values=nnz(Values);

if(Values==0)
disp('Является корнем'); 
else 
disp('Не является корнем'); 
end