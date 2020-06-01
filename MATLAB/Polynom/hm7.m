%% 1
P=[1,-6,15,-14];
R=roots(P);
x=linspace(min(R)-1,max(R)+1);
F=polyval(P,x);
plot(x,F), grid on;
roots(P)
%% 2
P=[1.-2,-8,+13,-24];
R=roots(P);
x=linspace(min(R)-1,max(R)+1);
F=polyval(P,x);
plot(x,F), grid on;
roots(P)

