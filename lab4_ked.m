clear all 
close all 
v=-5:0.01:5; 
for n=1:length(v)     
   if v(n) <= -1         
      G(n)=0;     
   elseif v(n) <= 0         
      G(n)=20*log10(0.5-0.62*v(n));     
   elseif v(n) <= 1         
      G(n)=20*log10(0.5*exp(-0.95*v(n)));     
   elseif v(n) <= 2.4         
      G(n)=20*log10(0.4-sqrt(0.1184-(0.38-0.1*v(n))^2));     
   else         
      G(n)=20*log10(0.225/v(n));     
   end      
end 
plot(v, G, 'b') 
xlabel('Fresnel Diffraction Parameter') 
ylabel('Diffraction Loss (dB)')