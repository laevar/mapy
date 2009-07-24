% waehrung_auslesen.m
% 
% Liest eine   Umrechnungstabelle aus der
% Datei 'umrechnung.txt'

clear all;
fid=fopen('umrechnung.txt','r');
waehrung_name=fscanf(fid,'Umrechnungstabelle: Euro-%s');
daten=fscanf(fid,['%f Euro = %f ',waehrung_name],[2 inf]);
umrechnung=fscanf(fid,'Umrechnungskoeffizient: %f'); 
fclose(fid);
  
% Ausgabe
fprintf('Umrechnung: Euro - %s: Kurs: %f \n',...
    waehrung_name,umrechnung);
fprintf(' %7.2f Euro  = %7.2f  \n',daten);