function s = mixit(S,w)
    if size(S,2) ~= length(w)
        s = [];
    else
        w = w(:);                           % make sure it is a column vector
        S = 2 * double(S) / (2^16 - 1) - 1; % scale and shift it to the interval [-1 1]
        s = S * w;                          % matrix multiplication does what we need
        if max(abs(s)) > 1                  % make sure to stay within range
            s = s / max(abs(s));
        end
    end
end

%{
function out = mixit(in1, in2)
    input_start = 0;
    input_end = 65535;
    output_start = -1;
    output_end = 1;
    
    in1_mapped = (double(in1) - input_start) .* ( (output_end - output_start) / (input_end - input_start) ) + output_start;
    out = in1_mapped * in2';
    if (max(abs(out)) > 1)
        out = out / max(abs(out));
    end
end
%}