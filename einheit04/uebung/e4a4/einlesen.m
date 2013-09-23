function [nrrows, nrchars, mcuchar] = einlesen (filename)
% liest eine Datei ein und gibt diverse Informationen ueber diese Datei
% zurueck
% input: 
%   filename: dateiname der einzulesenden datei
% output:
%   nrrows:   anzahl der zeilen in der Datei 
%   nrchars:  anzahl der Zeichen in der Datei
%   mcuchar:  der haufigst vorkommene Buchstabe
%
% Jochen Schulz   31.07.2009

fid = fopen(filename,'r');
nrrows = 0;
nrchars = 0;
mcuchara = [];
while 1
    tline = fgetl(fid);
    if ~ischar(tline)
      break
    end
    %anzahl zeilen
    nrrows = nrrows + 1;
    %anzahl chars
    nrchars = nrchars + length(tline);
    %der am haeufigsten vorkommene buchstabe
    for idx = 1:length(tline)
      if length(mcuchara) < tline(idx)
        mcuchara(tline(idx)) = 0;
      end
      if tline(idx) ~= ' ' %alle Leerzeichen ausnehmen
        mcuchara(tline(idx)) = mcuchara(tline(idx)) + 1;
      end
    end
end
%Bilde Maximum ueber alle Zeichen
[mcucharnr,mcucharidx] = max (mcuchara);
mcuchar = char(mcucharidx);
fclose(fid);