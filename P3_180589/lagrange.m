function f = lagrange(in_data,out_data,order)

syms x;
f = 0;
for i = 1:order
    lagr = 1;
    for j = 1:order
        if i ~=j
            lagr = lagr*(x-in_data(j))/(in_data(i)-in_data(j));
        end
    end
    f = f+out_data(i)*lagr;
end