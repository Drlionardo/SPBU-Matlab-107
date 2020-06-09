%% Task3:
Poly=[1,0,-4,6,-8,10]; % x^5-4x^3+ 6x^2-8x+10=0
x0=[1,-2]; %x0=2
Derivative = deconv(Poly,x0); %df/dx
dDX=polyval(Derivative,-x0(2));
disp("Results is: ")
disp(dDX)

%% Check result
Derivative=polyder(Poly);
dDX=polyval(Derivative,-x0(2));
disp("Results is: ")
disp(dDX)