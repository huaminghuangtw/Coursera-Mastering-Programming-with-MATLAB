function A = rooting_v4(v,w)
    A = zeros(length(v),length(w));
    rv = nthroot(v,1:length(v));
    rw = nthroot(w,1:length(v));
    for ii = 1:length(v)
        for jj = 1:length(w)
            A(ii,jj) = rv(ii) * rw(jj);
        end
    end
end