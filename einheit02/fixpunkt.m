%---------------------------------------------
%                fixpunkt.m
%
%  berechnet naeherungsweise einen Fixpunkt
%
% Gerd Rapin                    6.11.2003 
%----------------------------------------------

% Plot 1
x = linspace(0,1.5,50);
y = cos(x);
plot(x,x,x,y,'LineWidth',3),
axis([-0.1 1.5 -0.1 1.1]);
hold on;
pause; % stoppt bis eine Taste gedrueckt wird

% Anfangswert
z(1) = 0.1;
% Iterationsschritte 
it_max = 10;

for i = 1:it_max
    z(i+1) = cos(z(i));
    plot([z(i) z(i)], [z(i) z(i+1)],'r--','LineWidth',1);
    pause;
    plot([z(i) z(i+1)],[z(i+1) z(i+1)],'r--','LineWidth',1);
    hold on;
    pause; % stoppt bis eine Taste gedrueckt wird
end;