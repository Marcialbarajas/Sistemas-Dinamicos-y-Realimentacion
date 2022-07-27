syms x1 x2 gamma real

syms s

f(1,1) = x2
f(2,1) = -x1*x1*x1 - gamma * x2

[X01,X02] = solve (f,x1,x2)
X0 = [X01, X02]

pause;

J=jacobian(f, [x1,x2])
    
V = x1^4 / 4 + x2^2 / 2 %Funcion candidata de Lyapunov

grV = gradient(V) %Vemos el valor del gradiente

pause

for i=-3:0.5:3
    for j=-3:.2:3
        [t,x]=ode45(@ej5, [0 10], [i;j]);
        plot(x(:,1),x(:,2))
        hold on
        plot(i,j,'or')
    end
end

axis([-6 6 -6 6])