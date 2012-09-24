tspan = [0,3]; aw = 1;
[t,y] = ode15s(@rechte_seite1,tspan,aw,options);
plot(t,y,'r*--','Linewidth',3,'MarkerSize',15)
xlabel('t'), ylabel('y(t)')