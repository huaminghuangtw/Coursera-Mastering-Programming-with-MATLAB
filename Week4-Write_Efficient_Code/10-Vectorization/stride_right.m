function A = stride_right(M,N,col_major,preallocate)
    if preallocate, A = zeros(M,N); end
    if col_major
        for ii = 1:N 
            for jj = 1:M
                A(jj,ii) = 11*jj + 123*ii;
            end
        end
    else % row major
        for ii = 1:M
            for jj = 1:N
                A(ii,jj) = 11*ii + 123*jj;
            end
        end
    end
end