function A = small2zero_v2(A,limit)
    A(A<limit) = 0;
end