function d = rgcd(x,y)   % gcd = greatest common divisor
    if (~isscalar(x) || ~isscalar(y) || ...
        x ~= fix(x) || y ~= fix(y) || ...
        x < 0 || y < 0)
        error('x and y must be non-negative integers');
    end

    a = max([x y]);
    b = min([x y]);
    
    if b == 0
        d = a;
    else
        d = rgcd(b,rem(a,b));
    end
end
