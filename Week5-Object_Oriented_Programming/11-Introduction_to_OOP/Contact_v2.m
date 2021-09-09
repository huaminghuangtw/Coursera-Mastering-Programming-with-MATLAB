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
    end
end


            