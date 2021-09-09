classdef LinkedNode < handle       % LinkedNode_v7
    properties (Access = {?DList ?LinkedNode})
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
        function delete(node)
            if ~isempty(node.Owner)
                node.Owner.remove(node);
            end
        end
    end
end
            