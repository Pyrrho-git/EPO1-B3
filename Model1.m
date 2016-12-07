f = logspace (1, 4.3802, 200);
% Vector of frequencies in log scale
Re = 6;
Le = 4e-3;

Rp = 30;
Cp = 1e-3;
Lp = 20e-3;
% Parameters of the RL circuit

%Z = Re + 1i.*Le.*f.*2.*pi + ((Lp/Cp).*((Rp.^2)+1i))./((Rp.^2)+(1./((f.*2.*pi).^2).*Cp.^2)+1i.*2.*pi.*f.*Lp);

Z = Re + 1i.*Le.*f.*2.*pi + (1./( (1/Rp)+(1i.*f.*2.*pi.*Cp)+(1./(1i.*f.*2.*pi.*Lp)) ));

Z_amp = abs(Z);

figure
semilogx(f,Z_amp)
ylim([0 50])
title('Simplified speaker model')
xlabel('frequency (Hz)')
ylabel('impedance amplitude')