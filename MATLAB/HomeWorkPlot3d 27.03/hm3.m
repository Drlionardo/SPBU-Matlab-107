%a) z=axe^(-x^2-y^2)
subplot(4,3,1)
a=rand(1)*3;
[X,Y] = meshgrid(-10:.5:10);
z1=a.*X.*exp(1).^(-X.^2-Y.^2);
surf(X,Y,z1), title('z=axe^(-x^2-y^2)')
xlabel('x'), ylabel('y'), zlabel('z')

%b)Однополостный гиперболоид вращения
subplot(4,3,2)
a=rand(1); b=rand(1); c =rand(1); %rand параметры
u=linspace(-2.5,2.5);
v=linspace(0,2*pi);
[UU,VV]=meshgrid(u,v);
X=a.*cosh(UU).*cos(VV);
Y=b.*cosh(UU).*sin(VV);
Z=c*sinh(UU);
surfc(X,Y,Z), title('Однополостный гиперболоид вращения')
xlabel('x'), ylabel('y'), zlabel('z')
%c Парабалоид вращения
subplot(4,3,3)
r=linspace(-3,3);
v=linspace(0,2*pi);
[R,VV]=meshgrid(u,v);
X=R.*cos(VV);
Y=R.*sin(VV);
Z=R.^2./(pi.*2);
mesh(X,Y,Z), title('Парабалоид вращения')
xlabel('x'), ylabel('y'), zlabel('z')

%d Гиперболический парабалоид
aMin=-5; aMax=5; a =1; b=2;
subplot(4,3,4)
A=linspace(aMin,aMax);
B=linspace(-pi,pi);
[AA,BB]=meshgrid(A,B);
X=a.*AA.*cosh(BB);
Y=b.*AA.*sinh(BB);
Z=AA.^2;
surf(X,Y,Z), title('Гиперболический параболоид')
xlabel('x'), ylabel('y'), zlabel('z')

%eПараболический цилиндр
vMin=-60; vMax=50; uMax=100; a=3;
subplot(4,3,5)
U=linspace(0,uMax);
V=linspace(vMin,vMax);
[UU,VV]=meshgrid(U,V);
x=a.*UU.^2;
y=2.*a.*UU;
z=VV;
surf(x,y,z),  title('Параболический цилиндр')
xlabel('x'), ylabel('y'), zlabel('z'), shading  flat

%fКруговой тор
subplot(4,3,6)
a=3; b=4;
U=linspace(0,10);
V=linspace(0,2*pi);
[UU,VV]=meshgrid(U,V);
x=(a+b.*cos(VV)).*cos(UU);
y=(a+b.*cos(VV)).*sin(UU);
z=b.*sin(VV);
surf(x,y,z),  title('Круговой тор')
xlabel('x'), ylabel('y'), zlabel('z'), shading  flat

%gЭлипсоид вращения
subplot(4,3,7)
a=2; b=4;
U=linspace(0,2*pi);
V=linspace(-pi/2,pi/2);
[UU,VV]=meshgrid(U,V);
x=a.*cos(UU).*cos(VV);
y=a.*sin(UU).*cos(VV);
z=b.*sin(VV);
surf(x,y,z),  title('Элипсоид вращения')
xlabel('x'), ylabel('y'), zlabel('z'), shading  flat

%fПоверхность вращения гиперболы
subplot(4,3,8)
r=linspace(-2,2); b=300;
B=linspace(0,2*pi);
[RR,BB]=meshgrid(r,B);
x=RR.*cos(BB);
y=RR.*sin(BB);
z=b./RR;
surf(x,y,z),  title('Поверхность вращения гиперболы')
xlabel('x'), ylabel('y'), zlabel('z'), shading  flat

%Поверхность деформированной сферы
subplot(4,3,9)
a=19;
u=linspace(0,2*pi);
v=linspace(-pi/2,pi/2);
[UU,VV]=meshgrid(u,v);
x=a.*cos(UU).*cos(VV);
y=a.*cos(UU).*sin(VV);
z=b.*sin(UU-a);
surf(x,y,z),  title('Поверхность деформированной сферы')
xlabel('x'), ylabel('y'), zlabel('z'), shading  flat

%Поверхность с затухающими окружными волнами
subplot(4,3,10)
a=1; nu=0.2; w=4; fi=pi/2;
r=linspace(0,10);
u=linspace(-2*pi,2*pi);
[UU,RR]=meshgrid(u,r);
x=RR.*cos(UU);
y=RR.*sin(UU);
z=a.*exp(1).^(-nu.*RR).*sin(w.*RR+fi);
surf(x,y,z),  title('Поверхность с затухающими окружными волнами')
xlabel('x'), ylabel('y'), zlabel('z'), shading  flat

%Винтовой тор
subplot(4,3,11)
fi=linspace(0,2*pi);
v=linspace(0,5);
a=2;
R=3;
[FI,VV]=meshgrid(fi,v);
x=(a+R.*sin(FI)).*cos(VV);
y=(a+R.*sin(FI)).*sin(VV);
z=R.*cos(FI)+b.*VV;
surf(x,y,z),  title('Винтовой тор')
xlabel('x'), ylabel('y'), zlabel('z'), shading  flat

%Лента Мёбиуса
subplot(4,3,12)
u=linspace(0,2*pi);
v=linspace(-0.5,0.5);
[UU,VV]=meshgrid(u,v);
x=(1+VV.*cos(0.5.*UU)).*cos(UU);
y=(1+VV.*cos(0.5.*UU)).*sin(UU);
z=v.*sin(0.5.*UU);
surf(x,y,z),  title('Лента Мёбиуса')
xlabel('x'), ylabel('y'), zlabel('z'), shading  flat













