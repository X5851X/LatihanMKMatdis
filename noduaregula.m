clc
clear

syms x;
y = input('Masukkan Persamaan f(x): ');%x^2-2*x-8
a = input('Masukkan tebakan a     : ');%a=2
b = input('Masukkan tebakkan b    : ');%b=5
e = input('Masukkan toleransi eror: ');%e=0.0001

fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));

if fa*fb > 0
    disp('Nilai awal yang diberikan tidak mengandung akar');
else
    c = a - (a-b) * fa/(fa-fb);
    fc = eval(subs(y,x,c));
    fprintf('\n\na\t\t\tb\t\t\tx\t\t\tf(x)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc);
        if fa*fc< 0
            b =c;
            fb = eval(subs(y,x,b));
        else
            a =c;
            fa = eval(subs(y,x,a));
        end
        c = a - (a-b) * fa/(fa-fb);
        fc = eval(subs(y,x,c));
    end
    fprintf('\nAkarnya adalah: %f\n', c);
end