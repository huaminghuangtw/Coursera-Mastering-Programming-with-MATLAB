classdef CovidStateData < Statistics
    properties (Access = public)
        Name char
        IndexOfState double
    end
    methods
        function obj = CovidStateData(covid_data, nameOfState, indexOfState)
            obj@Statistics(covid_data, indexOfState);
            obj.Name = nameOfState;
            obj.IndexOfState = indexOfState;
        end
    end
end