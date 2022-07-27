syms x1 x2 real

syms s

f(1,1) = x2
f(2,1) = -x1 - x2 + x1*x2

[X01,X02] = solve (f,x1,x2)
X0 = [X01, X02]

pause 

J=jacobian(f, [x1,x2])
    
V = 1.5 * x1*x1 + x1*x2 + x2*x2

grV = gradient(V)

pause 

warning('off')

for i=-3:0.5:3
    for j=-3:.2:3
        [t,x]=ode45(@ej9, [0 10], [i;j]);
        plot(x(:,1),x(:,2))
        hold on
        plot(i,j)
    end
end

axis([-5 5 -5 5])
warning('on')