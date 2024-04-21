close all;
clear all;
clc;
do=100;
PL_do=60;
d=1:0.1:1000;
n=[2,3.5,5,1.8,6,3];
%Log Distance model
PL1= PL_do+ 10*n(1)*log10(d/do);
PL2= PL_do+ 10*n(2)*log10(d/do);
PL3= PL_do+ 10*n(3)*log10(d/do);
PL4= PL_do+ 10*n(4)*log10(d/do);
PL5= PL_do+ 10*n(5)*log10(d/do);
PL6= PL_do+ 10*n(6)*log10(d/do);
plot(d,PL1,d,PL2,d,PL3,d,PL4,d,PL5,d,PL6,'linewidth',2);
legend('n=2','n=3.5','n=5','n=1.8','n=6','n=3');
xlabel('Distance (m)');
ylabel('PL (dBm)');
title('Log Normal Shadowing Model’);
