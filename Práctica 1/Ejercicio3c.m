m=2.5;
c=0.6;
k=0.4;
tf=50;
F=0; %Lo consideramos por la condición del enunciado
x0=[1,0];
x1=[0,1];
x2=[1,1];
fg=@(t,x)[x(2); - c*x(2)/m - k*x(1)/m - F/m ]; %Sistema linealizado
figure
subplot(3,1,1)
[t,x]=ode45(fg,[0,tf],x1);
plot(t,x)
ylabel('[1,0]');
xlabel('tiempo (s)');
subplot(3,1,2)
plot(t,x)
[t,x]=ode45(fg,[0,tf],x2);
ylabel('[0,1]');
xlabel('tiempo (s)');
subplot(3,1,3)
plot(t,x)
ylabel('[1,1]');
xlabel('tiempo (s)');