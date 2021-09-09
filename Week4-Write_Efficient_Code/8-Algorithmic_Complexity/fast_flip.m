function v = fast_flip(v)
    for ii = 1:ceil(length(v)/2)
        tmp = v(ii);
        v(ii) = v(end-ii+1);
        v(end-ii+1) = tmp;
    end
end