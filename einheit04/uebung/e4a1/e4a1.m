disp('*** aufgabe 1');
clear

% Datei oeffnen
fid = fopen('daten.dat','r');
% Daten lesen
daten = fscanf(fid,'%f %f',[2 inf]);
% Sonstige Textinformationen aus der Datei lesen
% textscan ist eine alternative zu fscanf
lz = textscan(fid,'%s %s');
fclose(fid);
  
x = daten(1,:);
f = daten(2,:);
figure
plot (x,f);
xlabel(lz{1})
ylabel(lz{2})