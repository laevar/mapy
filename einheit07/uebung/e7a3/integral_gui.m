function han = integral_gui()
%------------------- Hauptprogram
% erzeuge GUI
han = erzGUI();
end

%------------------- Grafische Oberflaeche erzeugen
function han = erzGUI()
delete(findobj('tag','figGUI'));
fig = figure('name','Integral GUI','tag','figGUI');

han.pushbutton = uicontrol(fig,'Parent',fig,'Style','pushbutton','units','normalized',...
    'position',[0.8 0.1 0.17 0.10],'String','Aktualisieren','tag','update',...
    'Callback','integral');

% Vorsicht: Die Achse wir von jedem Plot-command ueberschrieben, falls
% nicht "hold all" gesetzt wird. Damit verschwindet auch der tag 'axesGUI'
%Da wir ihn hier nicht benutzen ist das irrelevant.
han.grafikachse = axes('Position',[0.1 0.3 0.6 0.65],'tag','axesGUI');

han.frame1 = uipanel(fig,'units','normalized',...
    'position',[0.1 0.1 0.4 0.1]);
han.text1 = uicontrol(fig,'style','text', 'tag','text1',...
    'units','normalized','parent',han.frame1,'position', [0.01 0.01 0.8 0.8],'String','Ergebnis = 0');

% Frame fuer alle Eingabe-parameter
han.frame2 = uipanel(fig,'units','normalized','position',[0.75 0.3 0.2 0.5]);
han.text2 = uicontrol(fig,'style','text','parent',han.frame2,...
    'units','normalized','position', [0.05 0.9 0.9 0.1],'String','Funktion');
han.func = uicontrol(fig,'style','edit','parent',han.frame2,'tag','func',.....
    'units','normalized','position', [0.05 0.78 0.9 0.12],'String','x.^3');
han.text3 = uicontrol(fig,'style','text','parent',han.frame2,...
    'units','normalized','position', [0.05 0.68 0.9 0.1],'String','a');
han.a = uicontrol(fig,'style','edit','parent',han.frame2,'tag','a',.....
    'units','normalized','position', [0.05 0.56 0.9 0.12],'String','0');
han.text4 = uicontrol(fig,'style','text','parent',han.frame2,...
    'units','normalized','position', [0.05 0.46 0.9 0.1],'String','b');
han.b = uicontrol(fig,'style','edit','parent',han.frame2,'tag','b',.....
    'units','normalized','position', [0.05 0.34 0.9 0.12],'String','1');
han.text5 = uicontrol(fig,'style','text','parent',han.frame2,...
    'units','normalized','position', [0.05 0.24 0.9 0.1],'String','N');
han.N = uicontrol(fig,'style','edit','parent',han.frame2,'tag','N',.....
    'units','normalized','position', [0.05 0.12 0.9 0.12],'String','20');
% Hiermit kann man Variablen in der GUI speichern
guidata(fig,han);
integral;
end

