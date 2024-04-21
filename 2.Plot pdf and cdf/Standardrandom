clear all;
close all;
clc;
%define parameters of uniform distribution
a=5;
b=10;
% genrating random samples
sample_size=10000;
%rand_samples=a+(b-a)*rand(sample_size,1);
%calc pdf,cdf
x=linspace(a,b,10000);
pdf_values=(1/(b-a)*ones(size(x)));
cdf_values=(x-a)/(b-a);
cdf_values(cdf_values >1)=1;
%plot pdf
figure;
plot(x,pdf_values,'b-','LineWidth',2);
title('PDF of Standard distribution');
xlabel('Random Variable (X)');
ylabel('PDF f(x)');
grid on;
%plot cdf
figure;
plot(x,cdf_values,'k-','LineWidth',2);
title('CDF of Standard distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;
