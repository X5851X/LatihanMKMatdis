clc
 
clear 
 
global yCO2in
 
Q= 0.13;
 
yCO20= 0;
 
yCO2out= 0.08;
 
yCO2in= 0.2;
 
H= 0.1;
 
A = 300;
hsl_int= quad(@subprog_adsorpsiCO2,yCO20,yCO2out);
 
t= A/(Q*H)*hsl_int%detik 
 
tjam=t/3600
 
%Adsorpsi gas CO2 dengan menggunakan
 pelarut non volatil
 
%sub-program
 
function fun_y = subprog_adsopsiCO2(yCO2)
 
global yCO2in
 
fun_y = 1./(yCO2in-yCO2);