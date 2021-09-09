function f = ifact(n)
    if ~isscalar(n) || n ~= fix(n) || n < 0
        error('non-negative integer scalar input expected');
    end
    f = 1;
    for ii = 1:n
        f = f * ii;
    end
end