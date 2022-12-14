s=10;
b=8/3;
r=28;
x0=[-8,8,27]
tf=20;
fg=@(t,x)[s*(x(2)-x(1)); x(1)*(r-x(3))-x(2);x(1)*x(2) - b*x(3)]
[t,x]=ode45(fg,[0,tf],x0);
figure
plot(x(:,1),x(:,3),'r')
figure
subplot(3,1,1)
plot(t,x(:,1))
ylabel('x');
subplot(3,1,2)
plot(t,x(:,2))
ylabel('y');
subplot(3,1,3)
plot(t,x(:,3))
ylabel('z');
xlabel('t')
