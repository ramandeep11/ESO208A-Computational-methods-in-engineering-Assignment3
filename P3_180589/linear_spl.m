function linear_spl(x, f, n)
a = zeros(n, 1);
b = zeros(n, 1);
for i=1:n
    a(i)=(f(i+1)-f(i))/(x(i+1)-x(i));
    b(i)=(f(i)*x(i+1)-f(i+1)*x(i))/(x(i+1)-x(i));
    
end
coeff=[a b];
output_lin(coeff,n,x);
plot_lin(x,f,coeff,n);
end