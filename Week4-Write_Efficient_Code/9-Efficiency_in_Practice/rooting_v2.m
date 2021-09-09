function A = rooting_v2(v,w)
    A = zeros(length(v),length(w));
    for ii = 1:length(v)
        x = nthroot(v(ii),ii);
        for jj = 1:length(w)
            A(ii,jj) = x * nthroot(w(jj),jj);
        end
    end
end