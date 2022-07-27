syms x1 x2 real

syms s

f(1,1) = x2
f(2,1) = - x1 + x2 * (x1*x1 - 1)

[X01,X02] = solve (f,x1,x2)
X0 = [X01, X02]


pause


warning('off')


[t,x]=ode45(@ej4, [10000 -10000], [1,1]);
 
plot(x(:,1),x(:,2))