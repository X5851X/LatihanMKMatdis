clc;
clear;

disp('========================================')
disp('  ')    
A=input('Nilai sudut A (derajat)  = ');
a=sind(A);b=cosd(A);c=tand(A);
disp('  ')     

disp(' A       Sinus       Cosinus       Tangen')
disp('derajat    A            A            A  ')
disp('========================================')
disp(sprintf('%3.0f  %12.6f %12.6f  %12.6f',A,a,b,c));