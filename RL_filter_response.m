% RL-filter transfer function procedure (EPO-1 assigment)

% The transfer function U2/U1 is complex, U1 equals the input voltage and
% U2 the voltage across the capacitor. Parameters of the R and C components
% are given.

% Author: Project group B3

f = logspace (0, 6, 100);
% Vector of frequencies in log scale
R = 100;
L = 1e-3;
% Parameters of the RL circuit

H_RL = 
% Transfer function (vector); use the correct equation
A = ...
% Amplitude-transfer (vector)
dFi = ...
% Fase difference (vector)

% Call self-made function
% The frequency, amplitude-transfer and fase difference vectors are
% input-arguments

fn_response_graph(f, A, dFi)