function xdot=ej5(t,x)
gamma=1;
xdot(1,1) = x(2,1)
xdot(2,1) = -x(1,1)*x(1,1)*x(1,1) - gamma * x(2,1)
end