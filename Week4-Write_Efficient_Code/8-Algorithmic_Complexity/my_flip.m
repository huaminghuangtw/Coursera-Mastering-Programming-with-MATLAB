function v = my_flip(v)
    for ii = 2:length(v)
        tmp = v(ii);
        for jj = ii:-1:2
            v(jj) = v(jj-1);
        end
        v(1) = tmp;
    end
end