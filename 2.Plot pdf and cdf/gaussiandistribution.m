close all;
clc;
%define parameters of gaussian distribution
mu=0;
sigma=1.5;
% generating random samples
sample_size=100000; rand_samples=mu+sigma*randn(sample_size,1);% randn(row,col) %calc pdf,cdf
x=linspace(-5,5,100000); pdf_values=(1/(sigma*sqrt((2*pi)))*exp(-(x-mu).^2/(2*sigma^2))); cdf_values=0.5*(1+erf((x-mu)/(sigma*sqrt(2))));
%plot pdf
figure;
plot(x,pdf_values,'b-','LineWidth',2);
title('PDF of Guassian distribution');
 
xlabel('Random Variable (X)'); ylabel('PDF f(x)');
grid on;
%plot cdf
figure; plot(x,cdf_values,'k:','LineWidth',2); title('CDF of Guassian distribution'); xlabel('Random Variable (X)'); ylabel('CDF F(x)');
grid on;
