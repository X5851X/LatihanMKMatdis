clc
clear

f = inline('Fungsi f:');
a = input('Masukkan batas bawah :');
b = input('Masukkan batas atas :');
galat1 = input('Masukkan galat toleransi :');
ya = feval(f,a);
yb = feval(f,b);
iter = 0;
xm1 = a;
galat = abs((b-a)/b);

while ya*yb>0
    disp('f(a)*f(b)>0'),
    break,
end
fprintf('\n    iterasi        a            b            xm            f(xm)             Galat\n');

while galat>galat1
    iter = iter+1;
    xm = (a*(yb)-b*(ya))/(yb-ya);
    yxm = feval(f,xm);
    a1 = a;b1 = b;
    while yxm == 0, break,
    end
    if ya*yxm<0
        b = xm;
        yb = yxm;
    else
        a = xm;
        ya = yxm;
    end
    galat = abs((xm-xm1)/xm);
    xm1 = xm;
    
    fprintf('%10.0f   %6.10f   %6.10f  %6.10f  %6.10f   %6.10f\n',[iter;a1;b1;xm;yxm;galat])
end
fprintf('Akar persamaannya adalah = %6.10f\n',xm)