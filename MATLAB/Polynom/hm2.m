%Using additional function Pol2Txt to properly disp polynomials 
%%
disp("Task 1:")
%Input plolynomials coefficients
Poly1=[2,-3,4,-5,6];
Poly2=[1,-3,1];

[q1,r1]=deconv(Poly1,Poly2);
%Output
disp("Whole part")
disp(Pol2Txt(q1))
disp("Remainder")
disp(Pol2Txt(r1))

%%
disp("Task 2:")
%Input plolynomials coefficients
Poly1=[1,-3,-1,-1];
Poly2=[3,-2,1];

[q1,r1]=deconv(Poly1,Poly2);
%Output
disp("Whole part")
disp(Pol2Txt(q1))
disp("Remainder")
disp(Pol2Txt(r1))
