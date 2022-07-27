function xdot = hopf(t,x)
sigma=1;

xdot(1,1) = x(1) * (sigma - x(1)*x(1) - x(2)*x(2)) - x(2)
xdot(2,1) = x(2) * (sigma - x(1)*x(1) - x(2)*x(2)) + x(1)

end