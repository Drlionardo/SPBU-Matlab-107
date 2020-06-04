Poly=[1,-3.55,5.1,-3.1]; %% Ploynom coefficients
x=linspace(-3,5); %% Rande of roots for plyynom
F=polyval(Poly,x);  %%Evaluate polynom results

roots(Poly) %%Roots output for comparison

%Plot the result
figure
plot(x,F,'Color',[0,0.7,0.9]), grid on,
line([0 0],ylim , 'Color', 'm'), %x axis
line(xlim,[0 0], 'Color', 'm')   %y axis
title('Grapical root ')
xlabel('x^3 - 3.55x^2 + 5.1x - 3.1')