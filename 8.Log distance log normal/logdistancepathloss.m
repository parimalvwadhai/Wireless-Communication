clc
clear all
close all
d=0:0.1:1000;
d0=100;
n1=2;
n2=3;
n3=4;
n4=5;
pl=60;
pl_log_distance1=pl+10*n1*log(d/d0);
pl_log_distance2=pl+10*n2*log(d/d0);
pl_log_distance3=pl+10*n3*log(d/d0);
pl_log_distance4=pl+10*n4*log(d/d0);
figure;
plot(d,pl_log_distance1,'r')
hold on
plot(d,pl_log_distance2,'b')
hold on
plot(d,pl_log_distance3,'g')
hold on
plot(d,pl_log_distance4,'y')
title("LOG DISTANCE PATH LOSS MODEL")
xlabel("Distance")
ylabel("Path Loss”)
