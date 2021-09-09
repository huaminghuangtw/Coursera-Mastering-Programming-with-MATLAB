function store = name_value_pairs(varargin)
    % Initialize an empty cell array
    store = {};
    % If the input does not come in pairs (remainder = 1), return
    if rem(length(varargin),2)
        return;
    end
    
    for ii = 1:floor(length(varargin)/2)
        % The Name part must be a char. If not, return an empty cell
        if ~ischar(varargin{2*ii-1})
            store = {};
            return;
        end
        store{ii,1} = varargin{2*ii-1};
        store{ii,2} = varargin{2*ii};
    end
end

%{
function db = name_value_pairs(varargin)
    if (nargin == 0) | (rem(nargin,2) == 1)
        db = {}
        return
    end
    for i = 1 : 2 : nargin
        if ( ~isequal(class(varargin{i}),'char') )
            db = {}
            return
        end
    end
    numRows = nargin/2
    numCols = 2
    db = cell(numRows, numCols)
    for i = 1 : numRows
        db{i,1} = varargin{(i - 1) * numCols + 1}
        db{i,2} = varargin{(i - 1) * numCols + 2}
    end
end
%}