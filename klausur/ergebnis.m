clear
maxpunkte = 60;
reduktion = 5;
minpunkte = floor((maxpunkte-reduktion)/2);
spanne = (maxpunkte-minpunkte)/10;
punkte = wrev((maxpunkte-reduktion-spanne):-spanne:(minpunkte-2*spanne))
noten = wrev([1 1.3 1.7 2 2.3 2.7 3 3.3 3.7 4]);
studenten = {'A.Latal',25.5;'Max Koellmer',36;'Lisa Thom',45.5;'Sven Goedeke',53.5;'Simon Gourevitch',10.5};


for idx = 1: length(studenten)
  dum = sum(studenten{idx,2} > punkte);
  if dum == 0
    notenspiegel(idx) = 5;
    studenten{idx,3} = notenspiegel(idx);
  else
    notenspiegel(idx) = noten(dum);
    studenten{idx,3} = notenspiegel(idx);
  end
end

plot(punkte,noten,'x',[studenten{:,2}],notenspiegel,'*')
grid on
studenten

%A. Latal : 3.7
% Max Koellmer: 2.7
%Lisa Thom: 2
% Sven Goedeke: 1.3
% Simon Gourevitch: 5