classdef Statistics < handle
    properties (GetAccess = public)
        Dates cell
        CumulativeCases double
        DailyCases double
        CumulativeDeaths double
        DailyDeaths double
    end
    methods
        function obj = Statistics(covid_data, index)
            obj.Dates = covid_data(1,3:end);
            obj.CumulativeCases = zeros(1,length(obj.Dates));   % pre-allocation
            obj.DailyCases = zeros(1,length(obj.Dates));
            for i = 1 : length(obj.Dates)
                obj.CumulativeCases(i) = covid_data{index,i+2}(1);
                obj.CumulativeDeaths(i) = covid_data{index,i+2}(2);
            end
            obj.DailyCases = [ obj.CumulativeCases(1), diff(obj.CumulativeCases) ];
            obj.DailyCases(obj.DailyCases < 0) = 0;
            obj.DailyDeaths = [ obj.CumulativeDeaths(1), diff(obj.CumulativeDeaths) ];
            obj.DailyDeaths(obj.DailyDeaths < 0) = 0;
        end
        function value = get.DailyCases(obj)
            value = obj.DailyCases;
        end
        function value = get.CumulativeCases(obj)
            value = obj.CumulativeCases;
        end
        function value = get.CumulativeDeaths(obj)
            value = obj.CumulativeDeaths;
        end
        function value = get.DailyDeaths(obj)
            value = obj.DailyDeaths;
        end
    end
end