function test_fast_flip
% Make a list of vector lengths:
N = 1e6*(1:10);
% Measure fast_flip time for a vector of each length: 
for ii = 1:length(N)
    t(ii) = timeit(@() fast_flip(1:N(ii)));
    fprintf('Time for %8d elements = %.4f\n',N(ii),t(ii));
end
% Plot time versus input size with a line and asterisks:
plot(N,t,N,t,'r*');

