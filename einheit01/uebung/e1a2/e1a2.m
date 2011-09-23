disp('*** aufgabe 2');
clear

addpath ('../')
% Koeffizienten
a = [-36 9 40 -10 -4 1]; 

x = linspace(0,4,30); % Betrachte [0,4]
y = ausw_poly2(a,x);

B=zeros(5);
B(:,5) = -a(1:5);
B(2:5,1:4)=eye(4);
eig(B)

% Plotten
figure
plot(x,y,'r*-','LineWidth',3,'MarkerSize',4)