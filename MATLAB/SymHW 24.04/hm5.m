syms n
disp('First');
disp(symsum(-1^((n^2+n)/2)*n/2^n))

syms x
disp('Second');
func = ((3-x).^(2.*n))./sqrt(n);
sum = symsum(func, n, [1 Inf]);
disp(sum);

syms k
disp('Third');
func = 1./(x-k).^3;
disp(symsum(func, k, -Inf, Inf));