function A = rooting_v3(v,w)
    A = zeros(length(v),length(w));
    rw = zeros(1,length(w));
    for jj = 1:length(w)
        rw(jj) = nthroot(w(jj),jj);
    end
    for ii = 1:length(v)
        x = nthroot(v(ii),ii);
        for jj = 1:length(w)
            A(ii,jj) = x * rw(jj);
        end
    end
end