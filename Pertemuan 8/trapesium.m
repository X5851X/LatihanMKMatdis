clear all;
close all;
clc;

%%parameter
a = 2;
b = 4;
n = 4; %banyak nya partisi
h = (b-a)/n;
x=a;
sigma = 0;

%% Tampilan 
fprintf('===============================\n');
fprintf('        Metode Trapesium       \n');
fprintf('===============================\n');
fprintf('i xi f(xi) \n');
fprintf('%d %f %f \n' ,1,x,f(x))

%%kaidah ttrapesium
for i=1:n-1
    x=x+h;
    sigma = sigma + 2*f(x);
    fprintf('%d %f %f \n' ,i+1,x,f(x))

end
l = (h/2)*(f(a)+sigma+f(b));
fprintf('banyak partisi : %d\n',n)

fprintf('hasil integral : %f\n',l)

%%fungsi integran
function y = f(x)
y = 3*x^2;
end
