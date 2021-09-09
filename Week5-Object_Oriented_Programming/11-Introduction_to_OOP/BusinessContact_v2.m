classdef BusinessContact < Contact
    properties
        Company
        Fax
    end
    methods
        function obj = BusinessContact(cname,lname,fname,phone,f)
            obj.LastName = string(lname);
            obj.FirstName = string(fname);
            obj.PhoneNumber = string(phone);
            obj.Company = string(cname);
            obj.Fax = string(f);
        end
end