n=6;

M=rand(n,n);
P=poly(M);
Pol2Txt(P)

Roots_P=roots(P);
K=polyvalm(P,M);

if(K(:)<0.00001)
    disp("Yes")
else
    disp ("No");
end