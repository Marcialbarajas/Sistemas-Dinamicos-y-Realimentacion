syms x1 x2 real

syms s

f(1,1) = x2 - x1*abs(x1)
f(2,1) = 1 - x1

[X01,X02] = solve (f,x1,x2)
X0 = [X01, X02] %Valores de los puntos de equilibrio
pause
warning('off')

fg=@(t,x)[x(2); -x(1) - x(2) + x(1)*x(2)]
    
for i=-3:0.5:3
    for j=-3:.2:3
        [t,x]=ode45(@ec1b, [0 10], [i;j]);
        plot(x(:,1),x(:,2))
        hold on
        plot(i,j,'or')
    end
end

axis([-5 5 -5 5])
warning('on')