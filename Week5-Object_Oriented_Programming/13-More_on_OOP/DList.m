classdef DList < handle       % DList_v6
    properties (Access = protected)
        Head
        Tail
        Length
    end
    methods
        function lng  = length(list)
            lng = list.Length;
        end
        
        function list = DList()
            list.Head = [];
            list.Tail = [];
            list.Length = 0;
        end
                
        function delete(list)
            while ~isempty(list.Head)
                list.Head.delete();
            end
        end
              
        function insert(list,node)
            if ~isempty(node.Owner)
                if node.Owner ~= list           % New node is in another list, 
                    node.Owner.remove(node);    % so we need to remove it.
                else
                    return;                     % New node is already in this list,
                end                             % so do nothing.
            end
            if list.Length == 0                 % If the list is empty,
                list.Head = node;               % put new node at the head,
            else
                list.Tail.Next = node;          % else, point tail node at it.
            end
            node.Next = [];                     % New node is at the end.
            node.Prev = list.Tail;              % Previous node is old tail node.
            list.Tail = node;                   % Make Tail node point at new node.
            list.Length = list.Length + 1;      
            node.Owner = list;                  
        end % insert
        
        function remove(list,node)
            if isempty(node) || node.Owner ~= list
                error('node is not in the list');
            end
            if ~isempty(node.Prev)              % If a node precedes the current node,
                node.Prev.Next = node.Next;     % make preceding node point to the node
            else                                % that follows the current node,
                list.Head = node.Next;          % else make Head point to it.
            end                                 
            if ~isempty(node.Next)              % If a node follows the current node,
                node.Next.Prev = node.Prev;     % make its prev point to the node that
            else                                % that precedes the current node
                list.Tail = node.Prev;          % else make previous node be the tail.
            end
            list.Length = list.Length - 1;      
            node.Next = [];
            node.Prev = [];
            node.Owner = [];
        end % remove
                
        function disp(list)
            item = list.Head;
            while ~isempty(item)
                item.disp();
                item = item.Next;
            end
        end
    end
end
            