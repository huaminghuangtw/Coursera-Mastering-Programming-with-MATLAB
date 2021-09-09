classdef LinkedNode < handle       % LinkedNode_v5
    properties (Access = ?DList)
        Prev
        Next
        Owner
    end
    methods (Abstract)
        gt(a,b)
        ge(a,b)
        lt(a,b)
        le(a,b)
        eq(a,b)
        ne(a,b)
    end
    methods
        function node = LinkedNode()
            node.Prev = [];
            node.Next = [];
            node.Owner = [];
        end
    end
end
            