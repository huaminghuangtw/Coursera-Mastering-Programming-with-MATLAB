function [f cnt] = fibocnt(n)
    persistent count;   % must specify persistent
    if isempty(count)   % first time it is set to [] by MATLAB
        count = 1;      % so we set it to 1
    else
        count = count + 1;  % subsequent times, we increment by 1
    end
    if n <= 2
        f = 1;
    else
        f = fibocnt(n-2) + fibocnt(n-1);
    end
    cnt = count;       % a pesistent variable cannot be an output argument
end