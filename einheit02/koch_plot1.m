%--------------------------------
% Plotten einer Koch Kurve 1
%
% Gerd Rapin    20.7.2005
%-------------------------------

clear all;
close all;

y1=[0;0];
y2=[1;0];

for level = 1:4
subplot(2,2,level),
koch(y1,y2,level);
title(['Koch Kurve: level = ' num2str(level)],'FontSize',16);
axis([0 1 -0.3 0.4])
hold off,
end;