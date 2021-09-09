function d = igcd(x,y)
    
    if (~isscalar(x) || ~isscalar(y) || ...
        x ~= fix(x) || y ~= fix(y) || ...
        x < 0 || y < 0)
        error('x and y must be non-negative integers');
    end

    a = max([x y]);
    b = min([x y]);
    while b ~= 0
        rem_count = rem_count + 1;
        r = rem(a,b);
        a = b;
        b = r;
    end
    d = a;
end