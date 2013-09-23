disp('*** aufgabe 3');
clear

tspan = [0,3]; aw = [1; 0 ; 0];
% Unterschiedliche Methoden sind fuer unterschiedle Probleme geeignet
% einer der Hauptkriterien ist die "Steifigkeit"
% welche unterschiedlich definiert wird, vor allem
% aber aussagt wie unterschiedliche Gradienten
% in der Funktion vorkommen koennen.
[t1,y1] = ode45(@rechte_seite2,tspan,aw);
[t2,y2] = ode15s(@rechte_seite2,tspan,aw);
figure
hold on
plot3(y1(:,1),y1(:,2),y1(:,3),'r-','Linewidth',1)
plot3(y2(:,1),y2(:,2),y2(:,3),'b-','Linewidth',1)
box on, grid on
xlabel('y(1)'), ylabel('y(2)'), zlabel ('y(3)')
legend('ode45','oder15s',4)
hold off