%---------------------------------
% current_figure.m
%
% Aendert die Uebrschriften der Figures so ab,
% das jeweis das aktuelle Fenster die Ueberschrift 
% 'aktuell' hat und die anderen 'nicht aktuell' 
%----------------------------------

% Handle aller Figures
a = get(0,'children')

% Beschrifte alle Figures als 'nicht aktuell'
for i = 1:length(a)
    set(a(i),'name','nicht aktuell')
end

% Ueberschreibe den Namen des aktuellen Fensters
set(gcf,'name','aktuell')
