function index = find_first(v,e)
    if nargin == 0
        error('At least one argument is required')
    elseif nargin == 1
        e = 0;
    end
    index = 0;
    indices = find(v == e);
    if ~isempty(indices)
        index = indices(1);
    end
end