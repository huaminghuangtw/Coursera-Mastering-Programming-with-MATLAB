classdef Contact < LinkedNode      % Contact_v6  
    properties
        FirstName   (1,1) string 
        LastName    (1,1) string 
        PhoneNumber (1,1) string
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
        end
        function set.FirstName(obj,fname)
            obj.FirstName = fname;
        end
        function set.PhoneNumber(obj,phone)
            obj.PhoneNumber = phone;
        end
    end
end


            