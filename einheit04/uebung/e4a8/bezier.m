function bezier(n)
% Input: n Anzahl der Kontrollpunkte
figure();
hold on;

% Kontrollpunkte generieren und plotten
for k = 1:n
    x(k) = log(k);
    y(k) = log(k)+sin(k);
    plot(x(k),y(k),'*'); 
    text(x(k)+0.01,y(k)+0.01,strcat('P_',num2str(k)));
end;

% Zeichnen des Kontrollpolygons
fill(x,y,'y')

% bernstein-polynome bis n-1 (damit es zu der Anzahl der Punkte passt)
bmat = bernstein(n-1);
%Bezier-Polynom berechnen und plotten
plot(bmat*x', bmat*y','--','Linewidth',4);
hold off;

