% Numerical Analysis Simpson 3/8 Rule using MATLAB
clear all;
close all;
clc;
fprintf('===============================\n');
fprintf('        Metode Simpson 3/8       \n');
fprintf('           Kelompok 10          \n');
fprintf('===============================\n');

f=inline('1/(2*x^4+4*x^2)');
a=input('Masukkan limit batas bawah integral=');
b=input('Masukkan limit batas atas integral=');
n=input('Masukkan angka dari interval (kelipatan 3)=');

h=(b-a)/n;

sum1=0.0;
sum2=0.0;
sum3=0.0;

for i=1:3:n-2
    x=a+i*h;
    sum1=sum1+f(x);
end
for i=2:3:n-1
    x=a+i*h;
    sum2=sum2+f(x);
end
for i=3:3:n-3
    x=a+i*h;
    sum3=sum3+f(x);
end

simp=3*h*(f(a)+3.0*sum1+3.0*sum2+2.0*sum3+f(b))/8;

fprintf('Nilai Integralnya adalah %f',simp)