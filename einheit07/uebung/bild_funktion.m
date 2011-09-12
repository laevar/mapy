function han = bild_funktion()
%---------------------------------------------
%  bild_funktion.m
%
% Erzeugt die grafische Darstellung der Funktion,
%   f(x,y,t) = cos(t^0.5*PI*exp(-x^2-y^2))
% auf [0,1]x[0,1]x[0,30]
% kann durch den Nutzer manipuliert werden
%---------------------------------------------

%------------------- Hauptprogram
% erzeuge Daten
x = linspace(-1,1,50);
y = linspace(-1,1,50);
t = 0:1:30;
A = erzDaten(x,y,t);
% erzeuge GUI
han = erzGUI(A);
end


%------------------- Grafische Oberflaeche erzeugen
function han = erzGUI(A)
delete(findobj('tag','figGUI'));
fig = figure('name','Beispiel eines GUIs','UserData',A,'tag','figGUI');

han.pushbutton = uicontrol(fig,'Parent',fig,'Style','checkbox','units','normalized',...
    'position',[0.8 0.2 0.17 0.10],'String','Legende','tag','checkb',...
    'Callback','darstGrafik');

han.grafikachse = axes('Position',[0.1 0.5 0.6 0.3],'tag','axesGUI');
han.grafik = surf(A(:,:,1));

han.frame1 = uicontrol(fig,'style','frame', 'units','normalized',...
    'position',[0.1 0.2 0.6 0.1]);
han.slider = uicontrol(fig,'style','slider','sliderstep',[0.2 0.2],'min',0,'max',30,...
    'units','normalized','position', [0.1 0.2 0.6 0.05],'tag','slider','Callback','darstGrafik');
han.text1 = uicontrol(fig,'style','text', 'tag','text1',...
    'units','normalized','position', [0.3 0.25 0.2 0.03],'String','Zeit t = 0');

han.frame2 = uibuttongroup('units','normalized','tag','radio',...
    'position',[0.8 0.5 0.17 0.3]);
han.text2 = uicontrol(fig,'style','text','parent',han.frame2,...
    'units','normalized','position', [0.1 0.6 0.8 0.3],'String','Darstellung');
han.radio1 = uicontrol(fig,'style','radio','parent',han.frame2,'tag','r1',.....
    'units','normalized','position', [0.1 0.45 0.8 0.15],'String','Surf');
han.radio2 = uicontrol(fig,'style','radio','parent',han.frame2,'tag','r2',.....
    'units','normalized','position', [0.1 0.25 0.8 0.15],'String','Mesh');
han.radio3 = uicontrol(fig,'style','radio','parent',han.frame2,'tag','r3',.....
    'units','normalized','position', [0.1 0.05 0.8 0.15],'String','Contour');
end

%------------------- Daten erzeugen
function A = erzDaten(x,y,t)
[X,Y,T] = meshgrid(x,y,t);
A = cos(pi*T.^0.5.*exp(-X.^2-Y.^2));
end



