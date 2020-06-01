%Построить плоскость ax+by+cz+d=0
a=rand(1); b= rand(1); c=rand(1); d=rand(1); %Случайные параметры a,b,c,d
%Сетка узлов
x=-10:0.5:10;
y=-10:0.5:10;
[X,Y]=meshgrid(x,y);
%Задаем Z для нашей плоскости
Z=(a.*X+b.*Y+d)./(-c);
figure
surfc(X,Y,Z), title ('Плоскость ax+by+cz+d=0'),
xlabel('x'), ylabel('y'), zlabel('z')