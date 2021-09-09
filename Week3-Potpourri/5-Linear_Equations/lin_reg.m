function [a, b] = lin_reg(x,y)
    M = [x; ones(1,length(x))]';
    sol = M \ y';
    a = sol(1);
    b = sol(2);
end