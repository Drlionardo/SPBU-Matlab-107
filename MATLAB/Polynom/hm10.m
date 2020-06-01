syms x
syms_poly = (x-1)^100;
poly = coeffs(syms_poly, 'all');
roots = roots(poly);

idx = roots==real(roots);
real_roots = roots(idx);

x = linspace(-100, 100);
poly_vals = polyval(double(poly), double(x));
plot(x, poly_vals);
hold on
plot(real_roots,zeros(size(real_roots)),'r*');