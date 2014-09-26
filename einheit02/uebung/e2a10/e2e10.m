% Cell-Arrays weil ich die Information mit abspeichern kann, das es die
% Werte des Logarithmus sind.
clear all
for i=1:10
    tabelle{i,1} = i;
    tabelle{i,2} = sprintf('ln(%i)',i);
    tabelle{i,3} = log(i);
end
%Ausgabe
for i=1:size(tabelle,1)
    fprintf ('%i: %f\n',tabelle{i,1},tabelle{i,3})
end

% Mit structures
clear tabelle
for i=1:10
    tabelle.index(i) = i;
    tabelle.wert(i) = log(i);
end
%Ausgabe
for i=1:size(tabelle.index,2)
    fprintf ('%i: %f\n',tabelle.index(i),tabelle.wert(i))
end
