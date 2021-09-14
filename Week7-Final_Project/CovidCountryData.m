classdef CovidCountryData < Statistics
    properties (Access = public)
        Name char
        IndexOfCountryIncludingGlobal double
        IndexOfCountryExcludingGlobal double
        CountOfCountry double
        NumberOfStates double
        ListOfStates cell
        ListOfStateNames cell
    end
    methods
        function obj = CovidCountryData(covid_data, nameOfCountry, indexOfCountryIncludingGlobal)
            obj@Statistics(covid_data, indexOfCountryIncludingGlobal);
            obj.Name = nameOfCountry;
            listOfCountriesExcludingGlobal = unique(covid_data(2:end,1));
            listOfCountriesIncludingGlobal = covid_data(:,1);
            obj.IndexOfCountryIncludingGlobal = indexOfCountryIncludingGlobal;
            [~,obj.IndexOfCountryExcludingGlobal] = ismember(nameOfCountry, listOfCountriesExcludingGlobal);
            isExisting = contains(listOfCountriesIncludingGlobal, nameOfCountry);
            obj.CountOfCountry = sum(isExisting);
            if isequal(obj.CountOfCountry, 1)              
                obj.NumberOfStates = 0;
                obj.ListOfStates = {};
                obj.ListOfStateNames = {};
            else
                obj.NumberOfStates = obj.CountOfCountry - 1;
                for ii = 1 : obj.NumberOfStates
                    indexOfState = indexOfCountryIncludingGlobal + ii;
                    nameOfState = covid_data{indexOfState,2};
                    obj.ListOfStates{ii} = CovidStateData(covid_data, nameOfState, indexOfState);
                    obj.ListOfStateNames{ii} = nameOfState;
                end
            end
        end
    end
end