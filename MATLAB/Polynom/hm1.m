P=[1,-3.55,5.1,-3.1];
x=linspace(-0,2);
F=polyval(P,x);
plot(x,F), grid on;
roots(P)