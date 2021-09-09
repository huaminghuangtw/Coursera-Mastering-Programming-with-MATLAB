function print_all(varargin)
    for ii = 1:nargin
        fprintf('Here is input argument number %d: %d\n', ii, varargin{ii})
    end
end