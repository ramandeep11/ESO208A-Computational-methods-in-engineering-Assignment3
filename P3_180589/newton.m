
function f = newton(in_data,out_data,order)

syms x;
f = 0;
for i = 1:order
    Pn = 1;
    for j = 1:order
        if i ~=j
            Pn = Pn*(x-in_data(j))/(in_data(i)-in_data(j));
        end
    end
    f = f+out_data(i)*Pn;
end