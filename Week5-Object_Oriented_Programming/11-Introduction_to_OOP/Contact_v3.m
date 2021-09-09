classdef Contact 
    properties
        FirstName
        LastName
        PhoneNumber
    end
    methods
        function obj = Contact(lname,fname,phone)
            obj.LastName = string(lname);
            obj.FirstName = string(fname);
            obj.PhoneNumber = string(phone);
        end
        function obj = set.LastName(obj,lname)
            obj.LastName = string(lname);
        end
        function obj = set.FirstName(obj,fname)
            obj.FirstName = string(fname);
        end
        function obj = set.PhoneNumber(obj,phone)
            obj.PhoneNumber = string(phone);
        end
    end
end


            