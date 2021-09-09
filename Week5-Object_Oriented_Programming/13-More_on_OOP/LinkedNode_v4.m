classdef LinkedNode < handle       % LinkedNode_v4
    properties (Access = ?DList)
        Prev
        Next
        Owner
    end
    methods (Abstract)
        gt(a,b)
    end
    methods
        function node = LinkedNode()
            node.Prev = [];
            node.Next = [];
            node.Owner = [];
        end
    end
end
            