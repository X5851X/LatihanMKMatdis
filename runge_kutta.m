clear all;
close all;
clc;
% Nilai awal waktu, variabel dependen, panjang langkah, dan jumlah iterasi
t0 = 0;
y0 = 1;
h = 0.1;
n = 10;
% Membuat tabel hasil
Y = zeros(n+1, 1);
T = zeros(n+1, 1);
Y(1) = y0;
T(1) = t0;
% Fungsi yang akan diintegrasikan
f = @(t, y) t*exp(3*t) - 2*y;

% Loop untuk setiap iterasi
for i = 1:n
    k1 = f(T(i), Y(i));
    k2 = f(T(i) + h/2, Y(i) + h*k1/2);
    k3 = f(T(i) + h/2, Y(i) + h*k2/2);
    k4 = f(T(i) + h, Y(i) + h*k3);
    
    Y(i+1) = Y(i) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
    T(i+1) = T(i) + h;
end
% Menampilkan hasil
disp([T, Y])