disp('*** aufgabe 1');
clear

fid = fopen('daten.dat','r');
daten = fscanf(fid,'%f %f',[2 inf])
lz = textscan(fid,'%s %s');
fclose(fid);
  
x = daten(1,:);
f = daten(2,:);
figure
plot (x,f);
xlabel(lz{1})
ylabel(lz{2})