function sortieren(dateiname1, dateiname2)
% sortieren   Die Datei dateiname1 wird
%             alphabetisch sortiert
%             und als dateiname2
%             abgespeichert.
%   INPUT:    STRING dateiname1
%             STRING dateiname2
%      Gerd Rapin 14.12.2003
 
% Datei laden
[fid,message]=fopen(dateiname1,'r');
if fid==-1 
    error('Datei nicht gefunden');
end;
% Datei lesen
anz=0;
while feof(fid)==0
    anz=anz+1;     
    inhalt{anz}=fgetl(fid); 
end
fclose(fid);
% Sortieren
sortierungen=1;
while sortierungen>0
    sortierungen=0;
    for k=1:anz-1
        % vergleich_gr(a,b) ist 1 fuer a<b, 0 sonst
        if vergleich_gr(inhalt{k+1},inhalt{k})
            hilf=inhalt{k};
            inhalt{k}=inhalt{k+1};
            inhalt{k+1}=hilf;
            sortierungen=sortierungen+1;
        end
    end
end
% Datei schreiben
fid=fopen(dateiname2,'w');
for k=1:anz
fprintf(fid,'%s \n',inhalt{k}); 
end;
fclose(fid);

            