%%
syms n
disp(symsum(-1^((n^2+n)/2)*n/2^n))
%%
syms x n
func = ((3-x).^(2.*n))./sqrt(n);
symsum(func,n,1,Inf)
%%
syms x k
func = 1./(x-k).^3;
disp(symsum(func, k, -Inf, Inf));