disp_taylor(exp(x), 'First', 0, 6);
disp_taylor((sin(x)).^2, 'Second', 0, 11);


function [] = disp_taylor(func, str_numb, start_p, count)
    syms x
    disp(str_numb);
    disp(func);
    disp(taylor(func, x, start_p, 'Order',  count));
end