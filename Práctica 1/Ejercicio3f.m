m=2.5;
c=0.6;
k=0.4;
tf=50;
y1=sin(0.1*t);
y2=sin(0.4*t);
y3=sin(t);
x=200;
F=1; %Lo consideramos por la condición del enunciado
x0=[1,0];
x1=[0,1];
x2=[1,1];
fg=@(t,x)[x(2); - c*x(2)/m - k*x(1)/m - sin(0.1*t)/m ]; %Sistema linealizado 
figure
subplot(4,1,1)
[t,x]=ode45(fg,[0,tf],x1);
plot(t,x)
ylabel('Salida');
subplot(4,1,2)
t=1:0.1:200;
plot(t,y1)
ylabel('Entrada 1 rad/s');
subplot(4,1,3)
t=1:0.1:200;
plot(t,y2)
ylabel('Entrada 0.4 rad/s');
subplot(4,1,4)
t=1:0.1:200;
plot(t,y3)
ylabel('Entrada 1 rad/s')
%Vemos que la señal no se llega a estabilizar en relación a la de entrada,
%a la que más se parece es a la relacionada con 0.1*t