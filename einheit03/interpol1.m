%.----------------------
%      interpol1.m
% 
% berechnet ein spezielles Interpolations
% problem. Suche p aus P_3, das durch
% (0,1), (1,1), (2,4), (5,3)
% verlaeuft
%-------------------------------

% Darstellen des Problems
plot([0 1 2 5], [1 1 4 3],'b*','MarkerSize',12);
axis([-1 6 -15 10]),
hold on;

% Aufstellen des lin GLS
A=[1 0 0 0; 1 1 1 1; 1 2 4 8; 1 5 25 125];
b=[1;1;4;3];

% Loesen des lin GLS
p=A\b;

% Darstellen der Loesung
x=linspace(-1,6,100);
y=ausw_poly2(p',x);
plot(x,y,'r-','LineWidth',2)