close all;
clc;
clear all;

v = -5:0.01:5; % value of nu
i = 0;
for n = -5:0.01:5
    i = i + 1;
    % Integration of the function
    intFe = quad(@(x) exp((-1i*pi*x.^2)/2), n, 20);
    % Complex Fresnel Integral
    fe = abs((0.5+0.5*1i)*intFe);
    % Diffraction Gain in dB
    Gdb_e(i) = 20*log10(fe);
end

% Approximation Value
for i = 1:length(v)
    if v(i) <= -1
        GdB(i) = 0;
    elseif v(i) <= 0
        GdB(i) = 20*log10(0.5-0.62*v(i));
    elseif v(i) <= 1
        GdB(i) = 20*log10(0.5*exp(-0.95*v(i)));
    elseif v(i) <= 2.4
        GdB(i) = 20*log10(0.4-sqrt(0.1184-(0.38-0.1*v(i))^2));
    else
        GdB(i) = 20*log10(0.225/v(i));
    end
end

figure;
plot(v, Gdb_e, v, GdB, ":", 'linewidth', 2);
legend('Exact Value', 'Approximation Value');
title('Knife Edge Diffraction');
xlabel('Fresnel Diffraction Parameter');
ylabel('Diffraction Loss (dB)');
