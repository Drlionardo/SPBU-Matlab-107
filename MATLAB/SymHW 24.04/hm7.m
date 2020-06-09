syms my_func(x)
%plots f(x)
F(x) = exp(1./(1-x.^2))./(1+x.^2);
fplot(real(F),[-7 7]); grid on

%Критические точки
DiffF = diff(F); %cals df/dx
x_vals = solve(DiffF == 0); %df/dx=0
y_vals = F(x_vals); 
hold on
plot(x_vals, y_vals, '*');
hold off


secos_diff = diff(DiffF); %%d^2f/dx 
x_vals = solve(secos_diff == 0);
y_vals = F(x_vals);

hold on
plot(x_vals, y_vals, '*');
hold off