a=1;
b=1;
c=1;
d=1;
x0=[10,5];
tf=100;
fg=@(t,x)[a*x(1)-c*x(1)*x(2); -b*x(2)+d*x(1)*x(2)]
param=odeset('MaxStep', 1e-3)
[t,x]=ode45(fg,[0,tf],x0, param);
subplot(2,1,1)
plot(t,x)
hold on
grid on
xlabel('t')
ylabel('x,y');
title('Gráfico Volterra-Lotka')
subplot(2,1,2)
plot(x(:,1),x(:,2))
xlabel('x')
ylabel('y')
title('Mapa de Fases del modelo Volterra-Lokta')
