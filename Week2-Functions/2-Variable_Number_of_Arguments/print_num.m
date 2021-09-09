function out = print_num(format,varargin)
    out = '';
    argindex = 1;
    skip = false;
    for ii = 1:length(format)
        if skip
            skip = false;
        else
            if format(ii) ~= '%'
                out(end+1) = format(ii);
            else
                if ii+1 > length(format)
                    break;
                end
                if format(ii+1) == '%'
                    out(end+1) = '%';
                else
                    if argindex >= nargin
                        error('not enough input arguments');
                    end
                    out = [out num2str(varargin{argindex},format(ii:ii+1))];
                    argindex = argindex + 1;
                end
                skip = true;
            end
        end
    end
end