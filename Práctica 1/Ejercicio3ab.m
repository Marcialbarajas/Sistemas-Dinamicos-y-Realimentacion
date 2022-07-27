m=2.5;
c=0.6;
k=0.4;
tf=50;
F=1;
x0=[2,5]; %Condiciones iniciales arbitrarias
fg=@(t,x)[x(2); - c*x(2)/m - k*x(1)/m - F/m ]; %Sistema linealizado
[t,x]=ode45(fg,[0,tf],x0);
plot(t,x);  
