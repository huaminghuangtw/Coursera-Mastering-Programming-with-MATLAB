function fh = get_polynomial_handle(p)
    function polynomial = poly(x)
        polynomial = 0;
        for ii = 1:length(p)
            polynomial = polynomial + p(ii).*x.^(ii-1);
        end
    end
    
    fh = @poly;
end

%{
function fh = get_polynomial_handle(p)
    function polynomial = poly(x)
        % VECTORIZATION
        polynomial = sum( p(1:end).*x.^(0:length(p)-1) )   % p(1:end) = p
    end
    
    fh = @poly;
end
%}
