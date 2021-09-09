function correct = grader(func1, func2, varargin)
    correct = true
    for i = 1 : length(varargin)
        in = varargin{i}
        if (~isequal(func1(in), func2(in)))
            correct = false
            return
        end
    end
end