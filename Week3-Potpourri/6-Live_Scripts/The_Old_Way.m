%% Mauna Loa CarbonDioxide Concentrations
% The Excel spreadsheet CO2 Mauna Loa.xlsx contains the CO2 data from
% Hawaii provided by the Earth System Research Laboratory of the National
% Oceanic and Atmospheric Administration (NOAA).

%% Let's read the data in and plot it:
co2 = xlsread("CO2 Mauna Loa.xlsx");
year = co2(:,3);
CO2 = co2(:,4); 
plot(year,CO2,'g'); grid on;
title("Monthly CO2 Concentrations");
xlabel("Year"); ylabel("CO2 (ppm)"); 
%% Smooth the data and plot it with the original data:
window = 12;
smoothed = smoothdata(CO2,'movmean',window);
figure; plot(year,CO2,'g',year,smoothed,'k'); grid on;
title(sprintf('Monthly CO2 Concentration and %d-month smoothing',window));
xlabel("Year"); ylabel("CO2 (ppm)");
legend('Monthly','Smoothed','location','best');