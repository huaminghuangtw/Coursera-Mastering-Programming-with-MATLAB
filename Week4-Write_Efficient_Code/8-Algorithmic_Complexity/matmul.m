function C = matmul(A,B)
    [rowA colA] = size(A);
    [rowB colB] = size(B);
    if ~ismatrix(A) || ~ismatrix(B)
        error('Function matmul works with matrices...');
    elseif colA ~= rowB
        error('Inner dimensions must agree!');
    end
 
    C = zeros(rowA, colB);  
    for ii = 1:rowA
         for jj = 1:colB
             for kk = 1:colA
                 C(ii,jj) = C(ii,jj) + A(ii,kk) * B(kk,jj);
             end
         end
    end
end