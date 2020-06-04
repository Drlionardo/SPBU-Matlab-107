function Pol = Pol2Txt(P)
syms x Pol
n=length(P);
Pol=0;
for i=1:n, Pol=Pol+P(n+1-i)*x^(i-1); 
end
end

