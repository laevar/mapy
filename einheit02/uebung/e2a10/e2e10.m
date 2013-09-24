% 'elegant' kann vieles heissen und es ist auch gewollt gewesen das man
% sich selbst aussucht, was elegant ist. Hier benutze ich eine Loesung mit
% Cell-Arrays weil ich die Information mit abspeichern kann, das es die
% Werte des Logarithmus sind.

for i=1:10
    tabelle{i,1} = i;
    tabelle{i,2} = sprintf('ln(%i)',i);
    tabelle{i,3} = log(i);
end
%Ausgabe
for i=1:size(tabelle,1)
    fprintf ('%i: %f\n',tabelle{i,1},tabelle{i,3})
end