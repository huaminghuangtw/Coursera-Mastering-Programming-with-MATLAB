function [y1, y2] = first_nested_example(x)
    c = 10;
    sub(c,x);
    y1 = inner(x);
    
    function out = inner(in)
        out = c*in;
    end
    
    c = 11;
    sub(c,x)
    y2 = inner(x);
end
 
function sub(in1,in2)
    fprintf('Multiplying %d times %d\n',in1,in2)
end
