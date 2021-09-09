classdef Contact < LinkedNode       % Contact_v9
    properties
        FirstName   (1,1) string 
        LastName    (1,1) string 
        PhoneNumber (1,1) string
    end
    methods (Access = protected)
        function name = nameToCompare(obj)
            name = upper(append(obj.LastName, " ", obj.FirstName));
        end
    end
    methods
        function obj = Contact(lname,fname,phone)
            arguments
                lname = ""
                fname = ""
                phone = ""
            end
            obj.LastName = lname;
            obj.FirstName = fname;
            obj.PhoneNumber = phone;
        end
        function set.LastName(obj,lname)
            obj.LastName = lname;
            obj.reposition();
        end
        function set.FirstName(obj,fname)
            obj.FirstName = fname;
            obj.reposition();
        end
        function set.PhoneNumber(obj,phone)
            obj.PhoneNumber = phone;
        end
        function a = gt(o1,o2)
            a = o1.nameToCompare() > o2.nameToCompare();
        end
        function a = ge(o1,o2)
            a = o1.nameToCompare() >= o2.nameToCompare();
        end
        function a = lt(o1,o2)
            a = o1.nameToCompare() < o2.nameToCompare();
        end
        function a = le(o1,o2)
            a = o1.nameToCompare() <= o2.nameToCompare();
        end
        function a = eq(o1,o2)
            a = o1.nameToCompare() == o2.nameToCompare();
        end
        function a = ne(o1,o2)
            a = o1.nameToCompare() ~= o2.nameToCompare();
        end
        function disp(node)
            fprintf('   Name:    %s %s\n',node.FirstName,node.LastName);
            fprintf('   Tel:     %s\n\n', node.PhoneNumber);
        end
    end

end
        