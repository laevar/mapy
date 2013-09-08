% Ausloeschung, mit 6 Dezimalstellen
format long g % sorgt fuer lange Ausgabezahlen
x = 0.344152
xwahr = 0.344152*1.0000001 % Fehler
x-xwahr
relfx = abs(xwahr-x)/xwahr
y = 0.344135
z = x-y
zwahr = xwahr-y
z-zwahr
relfz = abs(z-zwahr)/abs(zwahr) % relativer Fehler von z
zwahr = z*1.0000001
z-zwahr
relfz = abs(z-zwahr)/abs(zwahr) % relativer Fehler von z

