


clear;

A = [6 -1; -1 2];

p = [0; 0];          % p= Xo
g = [5; -1];         % g= ro
h = g;               % h= Po
iteration = 30;

for n=1:iteration;

    lamda(n)= (g(:,n)'*g(:,n))/(h(:,n)'*A*h(:,n));   % lamda = alpha
    p(:,n+1) = p(:,n) + lamda(n)*h(:,n);
    g(:,n+1) = g(:,n)-lamda(n)*A*h(:,n);
    gamma(n)= (g(:,n+1)'*g(:,n+1))/(g(:,n)'*g(:,n));   % gamma = beta
    h(:,n+1) = g(:,n+1) + gamma(n)*h(:,n);
    
    
end

