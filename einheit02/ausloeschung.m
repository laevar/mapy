% Ausloeschung, mit 6 Dezimalstellen
format long g % sorgt fuer lange Ausgabezahlen
x = 0.344152
xwahr = 0.344152*1.0000001 % das ergibt 0.01% relativen Fehler
relfx = abs(xwahr-x)/xwahr
y = 0.344135
z = x-y
zwahr = xwahr-y
relfz = abs(z-zwahr)/abs(zwahr) % relativer Fehler von z

