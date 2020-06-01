syms my_func(x)
func = (exp(1./(1 - x.^2)))./(1+x.^2);
start_point = -7;
end_point = 7;
fplot(real(func), [start_point end_point]); grid on

f_diff = diff(func);
x_vals = solve(f_diff == 0);
y_vals = func(x_vals);

hold on
plot(x_vals, y_vals, '*');
hold off

s_diff = diff(f_diff);
s_x_vals = solve(s_diff == 0);
s_y_vals = func(s_x_vals);

hold on
plot(s_x_vals, s_y_vals, '*');
hold off