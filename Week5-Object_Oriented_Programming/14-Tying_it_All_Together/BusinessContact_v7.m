classdef BusinessContact < Contact       % BusinessContact_v7
    properties
        Company (1,1) string 
        Fax     (1,1) string 
    end
    methods (Access = protected)
        function name = nameToCompare(obj)
            name = upper(append(obj.Company, " ", obj.LastName, " ", obj.FirstName));
        end
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
        function disp(node)
            fprintf('   Company: %s\n',node.Company);
            fprintf('   Name:    %s %s\n',node.FirstName,node.LastName);
            fprintf('   Tel:     %s\n',node.PhoneNumber);
            fprintf('   Fax:     %s\n\n',node.Fax);
        end
    end
end