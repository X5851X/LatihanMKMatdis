clc
clear

syms x;
f = input('Masukkan persamaan f(x): ');
x0 = input('Masukkan x0: ');
imax = input('Masukkan iteraksi maksimal: ');
e = input('Masukkan galat toleransi: ');

step = 1;
g = diff(f,x);
fa = eval(subs(f,x,x0));
while abs(fa)> e
    fa = eval(subs(f,x,x0));
    ga = eval(subs(g,x,x0));
    if ga == 0
        disp('Pembagian dengan nol.');
        break;
    end
    b = x0 - fa/ga;
    fprintf('iterasi %d\tx = %f\tf(x) = %f\n',step,x0,fa);
    x0 = b;
    if step>imax
       disp('Tidak konvergen');
       break;
    end
    step = step + 1;
end
fprintf('Akar Persamaanya adalah %f\n', x0);