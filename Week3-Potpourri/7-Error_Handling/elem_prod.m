function out = element_prod(X,Y,r,n,c)
    out = X(r,n) * Y(n,x);
end

% Version 2
%{
function out = element_prod(X,Y,r,n,c)
    try
        out = X(r,n) * Y(n,x);
    catch ME
        if isequal(ME.identifier,'MARLAB:badsubscript')
            [Xsize] = size(X);
            [Ysize] = size(Y);
            m1 = sprintf('Accessed X(%d,%d) and Y(%d,%d), but\n',r,n,n,c);
            m2 = sprintf(' sizes = X[%d,%d] and Y[%d,%d].',Xsize,Ysize);
            error([m1,m2]);
        end
    end
end
%}

% Version 3
%{
function out = element_prod(X,Y,r,n,c)
    try
        out = X(r,n) * Y(n,x);
    catch ME
        if isequal(ME.identifier,'MARLAB:badsubscript')
            [Xsize] = size(X);
            [Ysize] = size(Y);
            m1 = sprintf('Accessed X(%d,%d) and Y(%d,%d), but\n',r,n,n,c);
            m2 = sprintf(' sizes = X[%d,%d] and Y[%d,%d].',Xsize,Ysize);
            error('JMF:element_product:badsubscript',[m1,m2]);
        end
    end
end
%}

% Version 4
%{
function out = element_prod(X,Y,r,n,c)
    try
        out = X(r,n) * Y(n,x);
    catch ME
        if isequal(ME.identifier,'MARLAB:badsubscript')
            [Xsize] = size(X);
            [Ysize] = size(Y);
            m1 = sprintf('Accessed X(%d,%d) and Y(%d,%d), but\n',r,n,n,c);
            m2 = sprintf(' sizes = X[%d,%d] and Y[%d,%d].',Xsize,Ysize);
            MyE = MException('JMF:element_product:badsubscript',[m1,m2]);
            throw(MyE);
        end
    end
end
%}

% Version 5
%{
function out = element_prod(X,Y,r,n,c)
    try
        out = X(r,n) * Y(n,x);
    catch ME
        if isequal(ME.identifier,'MARLAB:badsubscript')
            [Xsize] = size(X);
            [Ysize] = size(Y);
            m1 = sprintf('Accessed X(%d,%d) and Y(%d,%d), but\n',r,n,n,c);
            m2 = sprintf(' sizes = X[%d,%d] and Y[%d,%d].',Xsize,Ysize);
            MyE = MException('JMF:element_product:badsubscript',[m1,m2]);
            throw(MyE);
        else
            rethrow(ME); % when error is not caught above
        end
    end
end
%}