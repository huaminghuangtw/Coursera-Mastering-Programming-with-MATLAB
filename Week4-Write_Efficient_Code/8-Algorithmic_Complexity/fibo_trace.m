function [f, v] = fibo_trace(n,v)
    v(end+1) = n;
    if n == 1 || n == 2
        f = 1;
    else
        [f1, v] = fibo_trace(n-2,v); 
        [f2, v] = fibo_trace(n-1,v);
        f = f1+f2;
    end
end