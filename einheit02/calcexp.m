x = -10:0.01:10; % die x-Werte
expx = exp(x); % die wahre Exponentialfunktion
for n=0:1:25
    % so viele Nullen wie x Elemente hat
    sum=zeros(size(x));     
    for j=0:n
        % das berechnet die Partialsumme
        sum=sum+x.^j/factorial(j); 
    end
    % plottet relativen Fehler
    plot(x,(sum-expx)./expx); 
    % wir plotten alles uebereinander
    hold on 
end
