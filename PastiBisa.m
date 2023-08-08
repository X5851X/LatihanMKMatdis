clc
clear

n=input('Variabel SPL = ');
for i=1:n
    M(i,:)=input(['Entri data spl baris ke-' num2str(i) '=']);
end
disp('Augmentasi Matriks SPL')
disp(M)
for i=1:n-1
    if M(i,i)==0
        a=i;
        while M(a,i)==0
            a=a+1;
        end
        T=M(i,:);
        M(i,:)=M(a,:);
        M(a,:)=T;
        disp (['B' num2str(i) '<--> B' num2str(a)])
        disp(M)
    end
    for j=i+1:n
        if M(j,i)~=0
            disp(['B' num2str(j) ' - (' num2str(M(j,i)) '/' num2str(M(i,i)) ')B' num2str(i)])
            M(j,:)=M(j,:)-((M(j,i)./M(i,i))*M(i,:));
            disp(M)
        end
    end
end
if M(n,n)==0&M(n,n+1)~=0
    disp('SPL tidak memiliki penyelesaian tunggal')
else
    for i=n:-1:2
        for j=i-1:-1:1
            disp(['B' num2str(j) '- (' num2str(M(j,i)) '/' num2str(M(i,i)) ')B' num2str(i)])
            M(j,:)=M(j,:)-((M(j,i)./M(i,i))*M(i,:));
            disp(M)
        end
    end
    for i=1:n
        disp(['(1/' num2str(M(i,i)) ')B' num2str(i)])
        M(i,:)=(1/M(i,i))*M(i,:);
        disp(M)
    end
    disp('Matriks Hasil Eliminasi Gauss Jordan')
    disp(M)
    disp('Solusi dari spl adalah')
    for i=1:n
        disp(['x' num2str(i) '=' num2str(M(i,n+1))])
    end
end