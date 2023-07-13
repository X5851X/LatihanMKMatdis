function x = cholesky(A,b)
tic
R=chol(A'*A);
w=R'\(A'*b);
x=R\w;
toc
end