function result = f_1d(x)
%--------------------------------------
% Sobolevsche Mittelungsfunktion (1d)
% f(x)=exp(-1/(1-|x|^2)), |x|<1, und f(x)=0 sonst
%
% Eingabe: Vektor x
% Ausgabe: Vektot f(x)
%
% Gerd Rapin     7.12.2003
%-------------------------------------------


% Berechnen des Funktionswerts
result = zeros(1,length(x));
    for k = 1:length(x)
    if abs(x(k))<1
        result(k) = exp(-1/(1-x(k)^2));
    else
        result(k) = 0;
    end;
end;
