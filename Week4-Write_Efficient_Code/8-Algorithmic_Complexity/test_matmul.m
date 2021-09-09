function t = test_matmul(M,matrix_class)
%TEST_MATMUL matmul run time for MxM matrices
%   TEST_MATMUL(M) M is a vector of matrix 
%   dimensions. Run times are returned and
%   are plotted versus M-cubed along with 
%   a fit line of the form: a*M^3 + b.
%
%   TEST_MATMUL(...,MATRIX_CLASS) MATRIX_CLASS
%   is a string giving the class of matrices
%   constructed as input to matmul. Default
%   is double.
%

if nargin < 1, M = 100*(1:10); end
if nargin < 2, matrix_class = "double"; end

max_val = 99; % <= 2 digits for inspecting small matrices
t = zeros(length(M),1);
    for ii = 1:length(M)
        A = randi(max_val,M(ii),matrix_class);
        B = randi(max_val,M(ii),matrix_class);
        t(ii) = timeit(@() matmul(A,B));
        fprintf('M = %d, t = %.4d\n',M(ii),t(ii));
    end
    % Fit data to M^3 dependence
    p = polyfit(M.^3,t,1); % straight-line fit
    t_fit = polyval(p,M.^3);
    % Plot time points and straight-line fit
    plot(M.^3,t,'b*',M.^3,t_fit,'--');
    grid on
    title_str = ...
        sprintf('MxM-matrix-multiplication run time vs M-cubed for %ss',matrix_class);
    title(title_str);
    xlabel('M^3');
    ylabel('time (s)');
    legend('data','fit','Location','SouthEast')
end