%---------------------------------------------
%                fixpunkt.m
%
%  berechnet naeherungsweise einen Fixpunkt
%
% Gerd Rapin                    6.11.2003 
%----------------------------------------------
clear 

% Plot 1
figure
x = linspace(0,1.5,50);
y = exp(-x);
hold on;
plot(x,x,x,y,'LineWidth',3),
axis([-0.1 1.5 -0.1 1.1]);

%pause; % stoppt bis eine Taste gedrueckt wird

% Anfangswert
z(1) = 1.1;
% Iterationsschritte 
it_max = 1000;

for i = 1:it_max
    z(i+1) = (exp(-z(i)));
    plot([z(i) z(i)], [z(i) z(i+1)],'r--','LineWidth',1);
 %   pause;
    plot([z(i) z(i+1)],[z(i+1) z(i+1)],'r--','LineWidth',1);
  %  pause; % stoppt bis eine Taste gedrueckt wird
end;
hold off