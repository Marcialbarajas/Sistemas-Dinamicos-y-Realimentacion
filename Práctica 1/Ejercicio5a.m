tf=-20;
x=[2,2]
[t,x] = ode45(@hopf,[tf,0],x0)
subplot(2,1,1)
plot(t,x)
hold on
grid on
xlabel('t')
ylabel('x,y');
title('Gr?fico de Hopf con tiempo positivo')
subplot(2,1,2)
plot(x(:,1),x(:,2))
xlabel('x')
ylabel('y')
title('Mapa de Fases del modelo de Hopf')