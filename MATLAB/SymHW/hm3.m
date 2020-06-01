syms x

%% 
first = atan(x)./2 - x./(2.*(1+x.^2).^2); 
disp_simpl_diff(first, 'First');
%% 
second = 3.*x^4 -14.*x.^3 + 12.*x.^2 + 24.*x + 6;
disp_simpl_diff(second, 'Second');
%% 
thrid = (sin(3.*x)-cos(3.*x)).^2;
disp_simpl_diff(thrid, 'Third');
function [] = disp_simpl_diff(func, str_numb)
    disp(str_numb);
    disp(simplify(diff(func)));
end