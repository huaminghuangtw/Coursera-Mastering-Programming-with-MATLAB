function index = binary_search(v, e, first, last)
    if nargin < 3
        first = 1;
        last = length(v);
    end
    mid = fix( (first + last) / 2 );
    if ~(first <= last) 
        index = 0;
    elseif e == v(mid)
        index = mid; 
    elseif e < v(mid)
        index = binary_search(v, e, first, mid-1);
    else
        index = binary_search(v, e, mid+1, last);
    end
end