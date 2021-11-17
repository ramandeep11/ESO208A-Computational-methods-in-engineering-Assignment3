function r = coeff_of_reg(func,in_data,out_data,n)

sum = 0;
for i = 1:n
    sum = sum + out_data(i);
end
avg = sum/n;
st = 0;
e = 0;
for i = 1:n
    st = st + (out_data(i) - avg)^2;
    e = e + (out_data(i) - subs(func,in_data(i)))^2;
end
r = (st-e)/st;