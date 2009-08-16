%-------------------------------
% erzeuge_verteilung.m
%
% Das Programm erzeugt eine Verteilung
% und speichert sie in 'daten.dat'
%-------------------------------------
x=-1:0.05:2;
y=(x-0.5).*(x+0.5).*(x-1.5);

fid=fopen('daten.dat','w');
fprintf(fid,'%10.3f    %10.3f \n',[x;y]);
fprintf(fid,'       x          f(x)\n\n');
fclose(fid);