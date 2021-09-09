classdef LinkedNode < handle
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
            