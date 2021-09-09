classdef BusinessContact < Contact
    properties
        Company
        Fax
    end
    methods
       function obj = BusinessContact(cname,lname,fname,phone,f)
            obj@Contact(lname,fname,phone);
            obj.Company = string(cname);
            obj.Fax = string(f);
       end
    end
end