m=2.5;
c=0.6;
k=0.4;
tf=50;
y1=sin(0.1*t);
x=200;
x0=[1,0];
x1=[0,1];
x2=[1,1];
fg=@(t,x)[x(2); - c*x(2)/m - k*x(1)/m - sin(0.1*t)/m ]; %Sistema linealizado 
figure
subplot(2,1,1)
[t,x]=ode45(fg,[0,tf],x1);
plot(t,x)
ylabel('Salida');
subplot(2,1,2)
t=1:0.1:200;
plot(t,y1)
ylabel('Entrada 0.1 rad/s')
%Vemos que la señal no se llega a estabilizar en relación a la de entrada