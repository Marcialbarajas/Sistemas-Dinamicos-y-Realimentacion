%El pendulo linealizado (apartado 1) Es el archivo pendulo_inv.m
m=1;
g=1;
l=1;
b=1;
tf=15;
x=[pi/3,0]
x0=[pi/3,0]
fg=@(t,x)[x(2); (g/l * sin(x(1))) - (b/(m*l))* sin(x(2))];
[t,x]=ode45(fg,[0,tf],x)
subplot(2,1,1)
plot(t,x)
hold on
grid on
xlabel('t')
ylabel('x,y');
title('Gráfico Péndulo invertido')
subplot(2,1,2)
plot(x(:,1),x(:,2))
xlabel('x')
ylabel('y')
title('Mapa de Fases del péndulo invertido sin par externo')
