f = logspace (0, 6, 100);
% Vector of frequencies in log scale
R = 100;
L = 1e-3;
% Parameters of the RL circuit

Z = R + 1i.*L.*f.*2.*pi;
%Series circuit

Z_amp = abs(Z);
%Take the amplitude

%Next plot the graph
figure
semilogx(f,Z_amp)
ylim([0 500])
title('Simplified speaker model')
xlabel('frequency (Hz)')
ylabel('impedance amplitude')