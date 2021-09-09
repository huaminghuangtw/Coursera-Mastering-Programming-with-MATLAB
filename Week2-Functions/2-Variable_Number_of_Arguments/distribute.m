function varargout = distribute(v)
    for ii = 1:length(v)
        varargout{ii} = v(ii);
    end
end