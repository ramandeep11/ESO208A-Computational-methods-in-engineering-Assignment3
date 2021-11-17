function output_lin(A,N,x)
output = input('Enter the address of the output file: ','s');
    fileid = fopen(output, 'a');
    fprintf(fileid, 'Linear spline\n\nSpline coefficients:   a*x + b\r\n');
    fprintf(fileid, '\t\t\ta\t\t\tb\r\n');
    input2=input('give address of points where function values are to be evaluated','s');
    
    
     M = dlmread(input2);
    in_data2 = M(:,1)';
    
    poly=zeros(2,1);
     for i=1:N
           poly(1:2)=A(i,1:2);
         polyval(poly,in_data2(i))
        fprintf(fileid, '(%d) %12.4f%12.4f\r\n', i-1, A(i, 1), A(i, 2));
     end
      fclose(fileid);
end