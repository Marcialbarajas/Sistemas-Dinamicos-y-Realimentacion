tf=100;
a0=5;
b=1;
c=1;
d=1;
x0=[10,5];
fg=@(t,x)[(a0*sin(0.1*t)/2 + a0 / 2)*x(1)-c*x(1)*x(2); -b*x(2)+d*x(1)*x(2)]
length(t)
length(x)
[t,x]=ode45(fg,[0,tf],x0);
subplot(2,1,1)
plot(t,x)
hold on
grid on
xlabel('t')
ylabel('x,y');
title('Gráfico Volterra-Lotka con parámetro a0 variable')
subplot(2,1,2)
plot(x(:,1),x(:,2))
xlabel('x')
ylabel('y')
title('Mapa de Fases del modelo Volterra-Lokta variable')
