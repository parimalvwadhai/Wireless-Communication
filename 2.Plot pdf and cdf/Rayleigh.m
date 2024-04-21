clc;
%define parameters of Rayleigh distribution
sigma=2;
% genrating random samples
sample_size=10000;
%calc pdf,cdf
x=linspace(0,5,10000);
pdf_values=((x./sigma^2).*exp(-x.^2/2*sigma^2));
cdf_values=1-exp((-x.^2)/2*sigma^2);
%plot pdf
figure;
plot(x,pdf_values,'b-','LineWidth',2);
title('PDF of Rayleigh distribution');
xlabel('Random Variable (X)');
ylabel('PDF f(x)');
grid on;
%plot cdf
figure;
plot(x,cdf_values,'k-','LineWidth',2);
title('CDF of Rayleigh distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;
