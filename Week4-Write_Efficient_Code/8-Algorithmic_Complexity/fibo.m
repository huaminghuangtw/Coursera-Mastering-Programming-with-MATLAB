function f = fibo(n)
    if n <= 2
        f = 1;
    else
        f = fibo(n-2) + fibo(n-1);
    end
end