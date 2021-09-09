classdef SortedNumber_v1 < LinkedNode       % SortedNumber_v1 
    properties
        Value
    end
    methods
        function node = SortedNumber(n)
            if ~isscalar(n) || ~isnumeric(n)
                error('Expected numeric scalar Value');
            end
            node.Value = n;
        end
        function res = gt(node1,node2)
            res = node1.Value > node2.Value;
        end
    end
end
            