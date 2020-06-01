syms x

disp('---First---');
P1_1 = x.^2;
P1_2  = (x-1).*(x+2).*(x+3);
disp(make_deconved(P1_1, P1_2));

disp('---Second---');
P2_1 = 3 + x;
P2_2 = (x-1).*(x.^2+1);
disp(make_deconved(P2_1, P2_2 ));


disp('----Third---');
P3_1 = x.^2;
P3_2 = (x.^4-1);
disp(make_deconved(P3_1, P3_2 ));


function [P, K] = make_deconved(P_1, P_2)
    syms x
    f_coeff = double(coeffs(P_1, 'all'));
    s_coeff = double(coeffs(P_2, 'all'));
    [r, s, K]=residue(f_coeff, s_coeff);
    P = r./(x-s);
end