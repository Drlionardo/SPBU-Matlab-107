n=15;

M=rand(n,n);
P=poly(M);
Pol2Txt(P)

Roots_P=roots(P);
Roots_P=sort(Roots_P);
Roots_M=eig(M);
Roots_M=sort(Roots_M);

Bool=true;
for k=1:n
    if(Roots_M(k)-Roots_P(k)<0.000000000001)
    else Bool=false;
    end        
end

if(Bool)
    disp('Является корнем'); 
    else 
    disp('Не является корнем'); 
end