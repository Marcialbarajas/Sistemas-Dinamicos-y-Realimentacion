function xdot=ec1a(t,x)
xdot(1,1) = x(2,1)
xdot(2,1) = -x(1,1) + (x(2,1)*(1-x(2,1)*x(2,1)))
end