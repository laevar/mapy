function anz = countstr(str,ch)
anz = 0;
% Alle Zeichen des String mit dem gegebenen Zeichen vergleichen
for idx = 1:length(str)
    if str(idx) == ch
        % Zeichen ist gleich, Zaehle Anzahl hoch
        anz = anz + 1;
    end
end

