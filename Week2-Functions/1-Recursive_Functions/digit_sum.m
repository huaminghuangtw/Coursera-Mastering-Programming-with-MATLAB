function res = digit_sum(n)
    if n < 10
        res = n;
    else
        res = digit_sum(floor(n/10)) + rem(n,10);
    end
end