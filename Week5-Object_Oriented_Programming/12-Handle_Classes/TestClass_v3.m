classdef TestClass < handle
    properties
        Value
    end
    methods
        function obj = TestClass(val)
            if nargin < 1
                obj.Value = 0;
            else
                obj.Value = val;
            end
        end
        function set_value(obj,val)
            obj.Value = val;
        end
    end
end
            