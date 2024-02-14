clc
clear all
close all

mu = 0;
x = rand(1, 5000) - 0.5;
x = sort(x);
sigma = 2;

eqn = (1/(sqrt(2*pi*sigma^2))) * exp(-(mu - x).^2/(2*sigma^2));
hold on;
plot(x, eqn, 'LineWidth', 1.5, 'DisplayName', 'Gaussian (\mu=0, \sigma=2)');

sigma2 = 1;
mu2 = 0;
eqn2 = (1/(sqrt(2*pi*sigma2^2))) * exp(-(mu2 - x).^2/(2*sigma2^2));
hold on;
plot(x, eqn2, 'LineWidth', 1.5, 'DisplayName', 'Gaussian (\mu=0, \sigma=1)');

sigma3 = 0.5;
mu3 = 0;
eqn3 = (1/(sqrt(2*pi*sigma3^2))) * exp(-(mu3 - x).^2/(2*sigma3^2));
plot(x, eqn3, 'LineWidth', 1.5, 'DisplayName', 'Gaussian (\mu=0, \sigma=0.5)');

sigma4 = 1;
mu4 = -0.5;
eqn4 = (1/(sqrt(2*pi*sigma4^2))) * exp(-(mu4 - x).^2/(2*sigma4^2));
yy = normpdf(x, eqn4);

plot(x, eqn4, 'LineWidth', 1.5, 'DisplayName', 'Gaussian (\mu=-0.5, \sigma=1)');

xlabel('X-axis');
ylabel('Probability Density Function');
title('Gaussian Distributions');
legend('show');
grid on;