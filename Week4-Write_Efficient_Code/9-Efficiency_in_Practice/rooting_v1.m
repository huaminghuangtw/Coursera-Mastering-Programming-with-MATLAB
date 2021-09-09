function A = rooting_v1(v,w)
    A = zeros(length(v),length(w));
    for ii = 1:length(v)
        for jj = 1:length(w)
            A(ii,jj) = nthroot(v(ii),ii) * nthroot(w(jj),jj);
        end
    end
end