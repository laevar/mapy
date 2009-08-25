close all
disp('*** aufgabe 1');
clear

tspan = [0,7]; aw = [0.5; 0.5];
[t,y] = ode45(@rechte_seite,tspan,aw);
plot(y(:,1),y(:,2),'-','Linewidth',3)
xlabel('y(1)'), ylabel('y(2)')

close all
disp('*** aufgabe 2');
clear

close all
disp('*** aufgabe 3');
clear

close all
disp('*** aufgabe 4');
clear

close all
disp('*** aufgabe 5');
clear

close all
disp('*** aufgabe 6');
clear
