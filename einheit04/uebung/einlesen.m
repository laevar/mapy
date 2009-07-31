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
while 
daten = fgetl(fid,'%f');
fclose(fid);