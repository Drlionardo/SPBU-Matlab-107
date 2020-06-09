syms x
eqn = cos(x)-exp(0.001+x.^2)==0;
fun = @(x) cos(x)-exp(0.001+x.^2);
S = solve(eqn,x)
T=fzero(fun,1)