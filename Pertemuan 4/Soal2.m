clc
clear

x1 = [0 1 2 3 4 5 6 7 8 9 10];
y1 = tan(x1);
z1 = cot(x1);

x2 = [10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30];
y2 = cos(x2);
z2 = sin(x2);

plot3(x1,y1,z1,'-o','MarkerFaceColor','r','MarkerSize',5);
hold on
plot3(x2,y2,z2,'-o','MarkerFaceColor','g','MarkerSize',5);
set(gca,'XGrid','on')
set(gca,'ZGrid','on')
legend('x1,y1,z1','x2,y2,z2')
title('Jawaban Soal No.2');
hold off