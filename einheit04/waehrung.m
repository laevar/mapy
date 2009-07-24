% waehrung.m
% 
% Erstellt eine Umrechnungstabelle zwischen 
% Euro und anderer Waehrung

waehrung_name=input('Umrechnungstabelle fuer welche Waehrung ? ','s');
fprintf('Ein Euro entspricht wievielen %s ? ',waehrung_name);
umrechnung=input('');
a=[1 2 3 5 10 20 50 100 200 1000];
fid=fopen('umrechnung.txt','w');
fprintf(fid,['Umrechnungstabelle: Euro-',waehrung_name,'\n\n']);
fprintf(fid,['%7.2f Euro = %7.2f ',waehrung_name,'\n'],[a;umrechnung*a]);
fprintf(fid,'\n \n Umrechnungskoeffizient: %3.2f \n',umrechnung); 
fclose(fid);
