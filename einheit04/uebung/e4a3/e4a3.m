disp('*** aufgabe 3');
clear

load census
figure;
hold on
%plot data
plot (cdate,pop);
hold on

%interpolations Punkte
icdate = linspace(min(cdate),2050,40);

methods ={'nearest','linear','cubic'};
for k = 1:3
    ipop = interp1(cdate,pop,icdate,methods{k});
    plot(icdate,ipop,'color',[1/k 1/(k*2) 1/(k*3)])
end
legend('original','nearest','data','cubic',4)
xlim([min(cdate) 2050]);
hold off
% Schaetzung. Nutze Indizierung durch Ungleichung
ipop(icdate>=2050)
