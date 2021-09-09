classdef BusinessContact < Contact
    properties
        Company
        Fax
    end
    methods
       function obj = BusinessContact(cname,lname,fname,phone,f)
            if nargin < 5 f = ""; end
            if nargin < 4 phone = ""; end
            if nargin < 3 fname = ""; end
            if nargin < 2 lname = ""; end
            if nargin < 1 cname = ""; end
            obj@Contact(lname,fname,phone);
            obj.Company = string(cname);
            obj.Fax = string(f);
       end
    end
end