syms x
%%
disp('---First---');
Poly1 = x.^2;
Poly2  = (x-1).*(x+2).*(x+3);
disp(deconved(Poly1, Poly2));
%%
disp('---Second---');
Poly1 = 3 + x;
Poly2 = (x-1).*(x.^2+1);
disp(deconved(Poly1, Poly2 ));

%%
disp('----Third---');
Poly1 = x.^2;
Poly2 = (x.^4-1);
disp(deconved(Poly1, Poly2 ));

%%Функци] разложения 
function [P, K] = deconved(P1, P2)
    syms x
    %Get all coeffs from P1 and P2
    P1_coeff = double(coeffs(P1, 'all'));
    P2_coeff = double(coeffs(P2, 'all'));
    
    [r, s, K]=residue(P1_coeff, P2_coeff);
    %Build answer
    P = r./(x-s);
end