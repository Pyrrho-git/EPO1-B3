function fn_response_graph (f, A, dFi, legenda)

% fn_response_graph (f, A, dFi)

% Parameters:
%   f:      Frequency vector [fmin, ..., fmax] in Hz
%   A:      Voltage response vector [A(fmin), ..., A(fmax)] relative units
%   [A(1, fmin), , A(1, fmax); ; A(N, fmin), , A(N, fmax] 
%   dFi:    Phase shift vector [dFi(fmin), ..., dFi(fmax)] in rad

% This function plots two graphs
% 1/ The voltage transfer in dB as a function of the frequency f.
% 2/ The phase difference in degree as function of the frequency f.

% Author: Project group B3


hold on; 

subplot (211)
% create graph of amplitude response, A in [dB]
semilogx (f, 20 * log10 (A), 'DisplayName', legenda(2:3))
legend('show')
grid
xlabel ('frequency [Hz]')
ylabel ('response [dB]')
%legend(legenda(2))


hold on;
subplot (212)
% Create graph with phase shift, dFi in [degrees].
semilogx (f, 180 ./ pi * dFi, 'DisplayName', legenda(2:3))
legend('show')
ylim ([-180 180])
grid
xlabel ('frequency [Hz]')
ylabel ('phase shift [deg]')

%legend(legenda(2))
end

% End of code