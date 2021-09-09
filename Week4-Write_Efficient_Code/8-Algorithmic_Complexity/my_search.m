function index = linear_search(v,e)
    index = 0;
    for ii = 1:length(v)
        if v(ii) == e
            index = ii;
            return;
        end
    end
end