syms x

first = sqrt(1-x^2)/x^2;
second = 1/(sin(x))^3;
third = log(sin(x));

disp_integral_sln(first, 'First', []);
disp_integral_sln(second, 'Second', []);
disp_integral_sln(third, 'Third', [0, pi/2]);


function [] = disp_integral_sln(my_int, str_numb, my_points)
    disp(str_numb);
    disp(my_int);
    if length(my_points) == 2
        disp(simplify(int(my_int, my_points(1,1), my_points(1,2))));
    else
        disp(simplify(int(my_int)));
    end
end