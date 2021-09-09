classdef OrderedList < DList       % OrderedList_v2
    methods        
        function insert(list,node)
            if ~isa(node,'Contact') && ~isa(node,'BusinessContact')
                fprintf('Must be Contact or BusinessContact\n');
                return
            end
            if ~isempty(node.Owner)
                if node.Owner ~= list
                    node.Owner.remove(node);
                else
                    return;
                end
            end
            node.Owner = list;
            list.Length = list.Length + 1;
            if isempty(list.Head)
                list.Head = node;
                list.Tail = node;
                node.Prev = [];
                node.Next = [];
            else
                cur = list.Head;
                prev = [];
                while ~isempty(cur) && node > cur
                    prev = cur;
                    cur = cur.Next;
                end
                if isempty(prev)
                    node.Next = list.Head;
                    node.Prev = [];
                    list.Head.Prev = node;
                    list.Head = node;
                else
                    prev.Next = node;
                    node.Prev = prev;
                    node.Next = cur;
                    if isempty(cur)
                        list.Tail = node;
                    else
                        cur.Prev = node;
                    end
                end
            end
        end
        function disp(list)
            disp('OrderedList containing:');
            item = list.Head;
            while ~isempty(item)
                item.disp();
                item = item.Next;
            end
        end
    end
end
