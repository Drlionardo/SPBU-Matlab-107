%%
syms x
F=exp(x);
%'First', 0, 6);
T(x)=(taylor(F, x, 0, 'Order',  6));
disp(T);
x=linspace(-3,5);
y=exp(x);
plot(x,y,'r')
hold on;
y=T(x);
plot(x,y,'b')
%%
syms x
F=(sin(x)).^2;
syms x
F=exp(x);
%'First', 0, 6);
T(x)=(taylor(F, x, 0, 'Order',  6));
disp(T);
x=linspace(-2,2);
y=(sin(x)).^2;
plot(x,y,'r')
hold on;
y=T(x);
plot(x,y,'b')
