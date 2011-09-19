function z = rechte_seite1(t,y)
% rechte_seite1   ODE Beispiel
%         z  =rechte_seite1(t,y)

z = -y -5*exp(-t)*sin(5*t);
