function result = integral()
%----------------------------------
% berechnet approximativ ein Integral 
% ueber  (a,b) durch die Mittelpunktregel 
% Hilfe von N Punkten
%
% Eingabe: 0 Parameter:       (N=20, a=0, b=1)
%          1 Parameter: N     (a=0,b=1)
%          3 Parameter: N,a,b
%----------------------------------
%Guidata wiederholen
han = guidata(findobj('tag','figGUI') );
 
func = inline(get(han.func,'String'));
N = str2double(get(han.N,'String'));
a = str2num(get(han.a,'String'));
b = str2num(get(han.b,'String'));

  
x = (a+(b-a)/(2*N)):(b-a)/N:(b-(b-a)/(2*N));
% Berechnung des Integrals
y = func(x);
result = (b-a)*sum(y)*(1/N);

set(findobj('tag','text1'), 'string', ...
    strcat('Ergebnis = ',num2str(result)) );

x1 = linspace(a,b,N+1);
cla;
hold on;
for i = 1:N
    fill([x1(i) x1(i)  x1(i+1) x1(i+1)], [0 y(i)  y(i) 0], 'r');
end;
plot(a:(b-a)/100:b,func((a:(b-a)/100:b)),'LineWidth',3);
hold off

end