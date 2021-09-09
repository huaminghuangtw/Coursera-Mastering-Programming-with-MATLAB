classdef SortedNumber < LinkedNode       % SortedNumber_v2 
    properties
        Value
    end
    methods
        function node = SortedNumber(n)
            arguments
                n (1,1) {mustBeNumeric} = 0
            end
            node.Value = n;
        end
        function res = gt(node1,node2)
            res = node1.Value > node2.Value;
        end
    end
end
            