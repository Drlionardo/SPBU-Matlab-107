function Pol = Pol2Txt(P)
syms z Pol
n=length(P);
Pol=0;
for i=1:n, Pol=Pol+P(n+1-i)*z^(i-1); end
end

