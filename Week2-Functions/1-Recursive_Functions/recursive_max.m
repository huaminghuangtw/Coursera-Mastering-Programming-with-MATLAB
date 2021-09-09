function mx = recursive_max(v)
    if length(v) == 1 
        mx = v(1);
    else
        % Each recursion, v(2:end) becomes smaller by 1-element
        mx = bigger(v(1),recursive_max(v(2:end)));
    end
end
% Cannot use the max function. Use helper function to return the larger of 
% two element
function c = bigger(a,b)
    c = a;
    if a < b
        c = b;
    end
end
