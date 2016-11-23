RC-filter transfer function procedure (EPO-1 assignment)

% The transfer function U2/U1 is complex, U1 equals the input voltage and
% U2 the voltage across the capacitor. Parameters of the R and C components
% are given.

% Author: Student, Date

f = logspace(0, 6, 100);
% Vector of the frequencies in log scale, omega = 2 * pi * f
R = 100;
C = 1e-4;
% Parameters of the RC circuit

H_RC = ...
% Transfer function (vector); use the correct equation
A = abs(H_RC);
% Amplitude response (vector)
dFi = angle(H_RC);
% Fase shift (vector)

% Call self-made function
% The frequency, amplitude response and fase shift vectors are input
% arguments.

fn_response_graph(f, A, dFi)