syms x1 x2 real

syms s

f(1,1) = x1 * (1 - x2) * x2 * (x1 - 1);
f(2,1) = x2 * (x1 - 1);

[X01,X02] = solve (f,x1,x2);
X0 = [X01, X02]

pause %para poder ver los valores del punto de equilibrio

warning('off')

fg=@(t,x)[x(2); -x(1) - x(2) + x(1)*x(2)]

for i=-3:0.5:3
    for j=-3:.5:3
        [t,x]=ode45(@ec1c, [0 1], [i;j]);
        plot(x(:,1),x(:,2))
        hold on
        plot(i,j,'or')
    end
end

axis([-5 5 -5 5])
warning('on')