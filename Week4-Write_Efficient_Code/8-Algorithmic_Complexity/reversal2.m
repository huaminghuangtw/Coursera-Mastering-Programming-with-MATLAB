function v = reversal2(v)
    if length(v) > 1
        ii = round(length(v) / 2);
        v = [reversal2(v(ii+1:end)) reversal2(v(1:ii))];
    end
end