function A = small2zero_v1(A,limit)
    for ii = 1:size(A,1)
        for jj = 1:size(A,2)
            if A(ii,jj) < limit
                A(ii,jj) = 0;
            end
        end
    end
end