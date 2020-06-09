%Используя plot3 построить:
subplot(1,2,1)
x=-10:.5:10;
y=-10:.5:10;
a=rand(1);
z1=a.*sin(sqrt(x.^2+y.^2))./sqrt(x.^2+y.^2);
plot3(x,y,z1), title('z=a*sin(x^2+y^2)^1/2)/((x^2+y^2)^1/2')
xlabel('x'), ylabel('y'), zlabel('z')

%Используя mesh поскрость z=-xsinx-ycosy
subplot(1,2,2)
[X,Y] = meshgrid(-10:.5:10);
z2=-X.*sin(X)-Y.*cos(Y);
mesh(X,Y,z2), title('z=-x*sin(x)-y*cos(y)')
xlabel('x'), ylabel('y'), zlabel('z')