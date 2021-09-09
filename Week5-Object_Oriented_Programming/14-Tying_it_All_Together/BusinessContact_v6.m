classdef BusinessContact < Contact       % BusinessContact_v6
    properties
        Company (1,1) string 
        Fax     (1,1) string 
    end
    methods
        function obj = BusinessContact(cname,lname,fname,phone,f)
            arguments
                cname = ""
                lname = ""
                fname = ""
                phone = ""
                    f = ""
            end
            obj@Contact(lname,fname,phone);
            obj.Company = cname;
            obj.Fax = f;
        end
        function set.Company(obj,cname)
            obj.Company = cname;
        end
        function set.Fax(obj,f)
            obj.Fax = f;
        end
    end
end