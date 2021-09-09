function A = rooting_v5(v,w)
    rv = nthroot(v,1:length(v));
    rw = nthroot(w,1:length(v));
    A = rv' * rw;
end