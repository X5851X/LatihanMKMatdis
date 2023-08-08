clear
clc
%% Masukkan Soal
f= @(x) x^3-0.588*x^2+0.0226;
%% Input nilai interval dan galat
disp('x^3-5*x+3=0')
a=input('Masukkan batas bawah :');
b=input('Masukkan batas atas :');
galat1=input('Masukkan galat Toleransi :');
init=[a,b];
ya=f(a) ;  %Nilai f(a)
yb=f(b);
iter=0;
xm1=a;
galat=abs((b-a)/b);
while ya*yb>0
    disp('Ingat f(a)*f(b)>0, berarti tidak ada akar dalam selang'),
    break,
end
fprintf('\n     iterasi       a            b            xm            f(xm)           Galat\n');
while galat>galat1
    iter=iter+1;
    xm=b-((yb*(b-a))/(yb-ya));
    yxm=f(xm);
    a1=a;b1=b;    % Inisialisasi untuk Tampilan
    while yxm==0, break,
    end
    if ya*yxm<0
        b=xm;
        yb=yxm;
    else
        a=xm;
        ya=yxm;
    end;
    galat=abs((xm-xm1)/xm);
    xm1=xm;
    fprintf('%10.0f   %6.10f   %6.10f   %6.10f    %6.10f   %6.10f\n',[iter;a1;b1;xm;yxm;galat])
end
fprintf('Akarnya adalah = %6.10f\n',xm)

xx=linspace(init(1),init(2),100);
yy=f(xx);

%% Grafiknya
figure(1)
plot(xx,yy)
hold on
scatter(xm,f(xm),'filled','p')
plot(xx,zeros(length(xx),1))
xlabel('x')
ylabel('f(x)')
legend('f(x)','Akar Persamaan','garis f(x)=0')
title(sprintf('Metode regula falsi - Akarnya = %.8f', xm))