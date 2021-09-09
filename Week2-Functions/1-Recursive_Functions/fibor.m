function f = fibor(n)
    if n == 1
        f = 1;
    elseif n == 2
        f = [ 1 1 ];
    else
        f = fibor(n-1);         % get the first n-1 elements
        f = [f f(end-1)+f(end)];% add together the last two elements
    end
end
