classdef CovidCountryData < handle
    properties
        Name
        IndexOfCountry   
        CountOfCountry
        NumberOfStates
        ListOfStates
        ListOfStateNames
        CumulativeCases
        DailyCases
        CumulativeDeaths
        DailyDeaths
    end
    methods
        function obj = CovidCountryData(covid_data, nameOfCountry)
            obj.Name = nameOfCountry;
            [~,index] = ismember(nameOfCountry, covid_data(:,1));
            [~,obj.IndexOfCountry] = ismember(nameOfCountry, unique(covid_data(2:end,1)));
            isExisting = contains(covid_data(:,1), nameOfCountry);
            obj.CountOfCountry = sum(isExisting);
            if isequal(obj.CountOfCountry, 1)              
                obj.NumberOfStates = 0;
                obj.ListOfStates = {''};
                obj.ListOfStateNames = {''};
            else
                obj.NumberOfStates = obj.CountOfCountry - 1;
                for ii = 1 : obj.NumberOfStates
                    indexOfState = index + ii;
                    nameOfState = covid_data{indexOfState,2};
                    obj.ListOfStates{ii} = CovidStateData(covid_data, nameOfState, indexOfState);
                    obj.ListOfStateNames{ii} = nameOfState;
                end
            end
            Dates = covid_data(1,3:end);
            obj.CumulativeCases = zeros(1,length(Dates));   % pre-allocation
            obj.DailyCases = zeros(1,length(Dates));
            for i = 1 : length(Dates)
                obj.CumulativeCases(i) = covid_data{index,i+2}(1);
                obj.CumulativeDeaths(i) = covid_data{index,i+2}(2);
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