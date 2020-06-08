n = input('n=');
approx=0.0001; % погрешность для оценки корней
syms x
Poly_symb = x^(2*n) - n*x^(n+1)+n*x^(n-1) - 1;
Poly= sym2poly(Poly_symb);
PR=roots(Poly);% Корни полинома
Derivative=polyder(Poly);
DR=roots(Derivative);% Корни производной
DUB=[]; %Кратные корни
for j =1 :length(PR)
    for k=1:length(DR)
        if(norm(PR(j)-DR(k),1)<approx) %Из-за погрешности вычисления не испольуется =
            DUB=[DUB;PR(j)];
            DR(k)=9999999;
        end
    end
end
disp("Кратные корни:")
DUB=unique(DUB)
a=real(min(PR))-1;
b=real(max(PR))+1;

fplot(Poly_symb,[a,b])

