% Eingabe der 4 Kontrollpunkte
axis([0 1 0 1]);
hold on;
for k = 1:4
    [x(k),y(k)] = ginput(1);
    plot(x(k),y(k),'*'); 
    text(x(k)+0.01,y(k)+0.01,strcat('P_',num2str(k)));
end;

% Zeichnen der Kontrollpolygons
fill(x,y,'y')

u = 0:0.01:1;
umat = [(1-u).^3; 3.*u.*(1-u).^2; 3.*u.^2.*(1-u);u.^3];
plot(x*umat, y*umat,'--','Linewidth',4);
hold off;

