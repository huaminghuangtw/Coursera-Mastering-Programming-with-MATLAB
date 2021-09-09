function A = row2explicit(A) 
    for ii = 1:size(A,1) 
        for jj = 1:size(A,2)
            if A(ii,jj) < A(ii,2) 
                A(ii,jj) = 0; 
            end
        end
    end
end 


