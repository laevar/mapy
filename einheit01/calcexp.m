x = -10:0.01:10; % die x-Werte
expx = exp(x);
% darauf die wahre Exponentialfunktion
for n=0:1:25
    sum=zeros(size(x)); % so viele Nullen wie x Elemente hat
    for j=0:n
        sum=sum+x.^j/factorial(j); % das berechnet die Partialsumme
    end
    plot(x,(sum-expx)./expx); % das plottet relative Fehler
    hold on % wir plotten alles uebereinander
end
