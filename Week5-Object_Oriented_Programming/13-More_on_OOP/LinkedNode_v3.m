classdef LinkedNode < handle       % LinkedNode_v3
    properties (Access = ?DList)
        Prev
        Next
        Owner
    end
    methods
        function node = LinkedNode()
            node.Prev = [];
            node.Next = [];
            node.Owner = [];
        end
    end
end
            