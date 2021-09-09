function database = voters(database,varargin)
    % Get the length of the input database
    count = length(database);
    
    % Create a copy of the database. This will be the new database if input
    % is valid
    tmp = database;
    
    % Names and IDs come in pairs. Increment loop counter by 2
    for ii = 1:2:length(varargin)
        % Make sure the Name is a char or string
        if ischar(varargin{ii}) || isstring(varargin{ii})
            count = count + 1;
            tmp(count).Name = string(varargin{ii});
            % Make sure there is a valid ID
            if ii+1 <= length(varargin) && isnumeric(varargin{ii+1}) && round(varargin{ii+1}) == varargin{ii+1}
                tmp(count).ID = varargin{ii+1};
            else
                % Not valid input. Return original database
                return;
            end
        else
            % Not valid input. Return orginal database
            return;
        end
    end
    % All inputs valid. Update database.
    database = tmp;
end

%{
function database = voters(db, varargin)
    database = db
    if (rem(length(varargin),2))
        return
    end
    name = {}
    id = {}
    for i = 1 : (length(varargin)/2)
        if ( (ischar(varargin{i*2 - 1}) || isstring(varargin{i*2 - 1})) && isnumeric(varargin{i*2}) && (round(varargin{i*2}) == varargin{i*2}) )
            name{end + 1} = string(varargin{i*2 - 1})   % append cell array
            id{end + 1} = varargin{i*2}
        else
            return
        end
    end
    temp_db = struct('Name', name, 'ID', id)
    if (isempty(db))
        database = temp_db
    else
        database = [database, temp_db]   % append structure array
    end
end
%}