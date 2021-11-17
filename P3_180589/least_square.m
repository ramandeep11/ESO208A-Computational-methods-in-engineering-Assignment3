function X = least_square(in_data,out_data,order)

A = [];
B = [];
for i = 1:order+1
    for j = 1:order+1
        A(i,j) = (in_data).^(i-1)*(in_data)'.^(j-1);
    end
    B(i) = (out_data)*(in_data)'.^(i-1);
end
X = (A\B')';