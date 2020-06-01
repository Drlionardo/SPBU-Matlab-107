%1)
Pol=[1,-2,6,-10,16];
x0=[1,-4];
[q,r]=deconv(Pol,x0);
disp("Results is: ")
t=length(r);
disp(r(length(r)));
disp ("For polyder")
Pol=polyder(Pol);
[q,r]=deconv(Pol,x0);
disp("Results is: ")
t=length(r);
disp(r(length(r)));