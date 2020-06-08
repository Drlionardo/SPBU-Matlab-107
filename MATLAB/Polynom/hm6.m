x = [-1 0 1 2 3];
y = [6 5 0 3 2];
%Интерполяционный полином, т.к степень = кол-ву точек - 1 -> проходит через них
%Степен не наименьшая, но достаточная 
%Степен может быть меньше, если хотя бы 3 точки лежат на одной прямой, но
%в данной задаче это не выполняется

p = polyfit(x,y,length(x)-1);
disp("Roots:")
disp(roots(p))

x1 = linspace(min(x),max(x));
f1 = polyval(p,x1);

figure
plot(x,y,'o')
hold on
plot(x1,f1,'r--')
legend('Исходные точки','Интерполяционный полином')

