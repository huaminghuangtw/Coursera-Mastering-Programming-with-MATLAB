function f = fibo_last(n)
    f = fibo_list(n);
    f = f(end);
end

function f = fibo_list(n)
    if n <= 2
        f = ones(1,n);
    else
        f = fibo_list(n-1);
        f = [f f(end-1)+f(end)];
    end
end