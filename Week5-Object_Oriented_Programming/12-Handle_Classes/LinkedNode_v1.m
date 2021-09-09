classdef LinkedNode < handle
    properties
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
            