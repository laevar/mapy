close all
disp('*** aufgabe 1');
clear

tspan = [0,7]; aw = [0.5; 0.5];
[t,y] = ode45(@rechte_seite,tspan,aw);
plot(y(:,1),y(:,2),'-','Linewidth',3)
xlabel('y(1)'), ylabel('y(2)')

disp('*** aufgabe 2');
clear

tspan = [0,3]; aw = [1; 0 ; 0];
[t1,y1] = ode45(@rechte_seite2,tspan,aw);
[t2,y2] = ode15s(@rechte_seite2,tspan,aw);
figure
hold on
plot3(y1(:,1),y1(:,2),y1(:,3),'r-','Linewidth',1)
plot3(y2(:,1),y2(:,2),y2(:,3),'b-','Linewidth',1)
box on, grid on
xlabel('y(1)'), ylabel('y(2)'), zlabel ('y(3)')
hold off

disp('*** aufgabe 3');
clear

integral2 ('x^3',50,-3,3)
integral2 ('x^2*sin(pi*x)',50,1,4)

disp('*** aufgabe 4');
clear

g = '(1 - abs(x^2))*(abs(x) < 1)';
ezplot(g,[-2 2]);

disp('*** aufgabe 5');
clear

ezplot('sin(x)*cos(2*x)',[-pi,2*pi]);
legend({'sin(x)*cos(2*x)'},'FontSize',21)
set(gca,'XTick',-pi:pi/2:2*pi)
set(gca,'XTickLabel',[num2str([-1:1/2:2]') repmat(' pi',7,1)],'FontSize',14)

disp('*** aufgabe 6');
clear

interpolation('x^2',50);

disp('*** aufgabe 7');
clear

myfplot('sin(x)*sin(y)');
myfplot('sin(x)*sin(y)',5);

