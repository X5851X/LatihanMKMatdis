clc
clear
disp(' ')
disp(' ')
disp(' XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
disp(' ++++++++++HUKUM BERNOULLI+++++++++')
disp(' ========METODE BISECTION II=======')
disp(' ')
disp(' ')
Q=input(' Masukan besar debit Q =');
g=input(' Masukan besar percepatan gravitasi g =');
b=input(' Masukan lebar pipa b =');
h0=input(' Masukan tinggi maksimum h0 =');
H=input(' Masukan tinggi pelebaran pipa H =');
h1=input(' Masukan akar awal pertama=');% tebakan akar pertama
h2=input(' Masukan akar awal kedua=');% tebakan akar kedua
disp('-------------------------')
disp(' hm fm ') % hm adalah rata-rata h1 dan h2
disp('-------------------------')
for k=1:10;
f1=bernoulli(Q,g,b,h0,H,h1); 
f2=bernoulli(Q,g,b,h0,H,h2);
hm=(h1+h2) / 2; 
fm=bernoulli(Q,g,b,h0,H,hm);
fprintf('%9.6f%13.6f \n', hm,fm) % Untuk memunculkan hm dan fm dalam 1 baris
if (f1*fm<0)
h2=hm;
else
h1=hm;
end
end