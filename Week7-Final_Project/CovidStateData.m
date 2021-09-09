classdef CovidStateData
    properties
        Name
        IndexOfState
        CumulativeCases
        DailyCases
        CumulativeDeaths
        DailyDeaths
    end
    methods
        function obj = CovidStateData(covid_data, nameOfState, indexOfState)
            obj.Name = nameOfState;
            obj.IndexOfState = indexOfState;
            Dates = covid_data(1,3:end);
            obj.CumulativeCases = zeros(1,length(Dates));   % pre-allocation
            obj.DailyCases = zeros(1,length(Dates));
            for i = 1 : length(Dates)
                obj.CumulativeCases(i) = covid_data{obj.IndexOfState,i+2}(1);
                obj.CumulativeDeaths(i) = covid_data{obj.IndexOfState,i+2}(2);
            end
            tempDailyCases = [ obj.CumulativeCases(1), diff(obj.CumulativeCases) ];
            tempDailyCases(logical(tempDailyCases < 0)) = 0;
            obj.DailyCases = tempDailyCases;
            tempDailyDeaths = [ obj.CumulativeDeaths(1), diff(obj.CumulativeDeaths) ];
            tempDailyDeaths(logical(tempDailyDeaths < 0)) = 0;
            obj.DailyDeaths = tempDailyDeaths;
        end
    end
end