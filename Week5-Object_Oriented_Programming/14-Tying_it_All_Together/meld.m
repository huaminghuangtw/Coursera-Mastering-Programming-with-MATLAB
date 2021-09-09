function out = meld(in1,in2)
    % MELD(X,Y) combine inputs
    if nargin == 1
        out = in1;
    elseif isa(in1,"char") && isa(in2,"char")
        out = append(in1,in2);
    else
        if ~isa(in1,"numeric") 
            in1 = string(in1);
        end
        if ~isnumeric(in2) % relative of isa()
            in2 = string(in2);
        end
        out = in1 + in2;
    end
end
