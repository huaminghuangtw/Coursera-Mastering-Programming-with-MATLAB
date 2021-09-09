classdef LetterNode < LinkedNode
    properties
        Letter
    end
    methods
        function obj = LetterNode(l)
            if nargin < 1
                obj.Letter = ' ';
            else
                obj.Letter = l;
            end
        end
    end
end
    