clear
close all
hc{1} = 0.01:0.01:1; % naiver Versuch
hc{2} = hc{1}.^5;% verbesserter Versuch
for i = 1:2
    h = hc{i};
    eplus = exp(h);
    eminus = exp(-h);
    zentral = (eplus-eminus)./(2*h);
    absfehler = abs(zentral-1.0);
    if i == 1
        % naiver Versuch
        % Fehler geht runter fuer kleineres h. Das ist zu erwarten, aber
        % man sieht die Probleme nicht.
        plot(h,absfehler) 
    else
        figure
        % besserer Versuch
        % Fehler geht runter bis er dann wieder groesser wird!
        % wieder ein Problem von numerischer Genauigkeit
        loglog(h,absfehler) 
    end
end
