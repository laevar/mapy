tspan = [0,3]; aw = 1;
[t,y] = ode45(@rechte_seite1,tspan,aw);
plot(t,y,'*--','Linewidth',3)
xlabel('t'), ylabel('y(t)')