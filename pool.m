%pool
disp('*** aufgabe 5');
clear

ezplot('sin(x)*cos(2*x)',[-pi,2*pi]);
legend({'sin(x)*cos(2*x)'},'FontSize',21)
set(gca,'XTick',-pi:pi/2:2*pi)
set(gca,'XTickLabel',[num2str([-1:1/2:2]') repmat(' pi',7,1)],'FontSize',14)

disp('*** aufgabe 6');
%-----------------------------------------------------------------------------------
% \begin{aufg}[0]
% Modifizieren Sie das Programm \mcode{interpolation.m}. Schreiben Sie
% eine Funktion, die  eine als String gegebene Funktion $f$ an $N$
% äquidistanten Punkten in $[-1,1]$ interpoliert. \\
% {\it Hinweis:} Verwenden Sie den Befehl \mcode{f=fcnchk(f)} für den
% String $f$.
% \end{aufg}

clear

interpolation('x^2',50);
 
% \begin{aufg}[0]
% Erstellen Sie die Funktion 
% \[ g(x) := \left \{ \begin{array}{ll} 1-|x|^2, & |x|<1 \\
% 0, & |x| \geq  1 \\
% \end{array} \right. \quad x \in \mathbb{R}.  \vspace*{-0.3cm}
% \]
% Plotten Sie $g$ mit dem Befehl \mcode{ezplot}.  
% \end{aufg}
disp('*** aufgabe 4');
clear

g = '(1 - abs(x^2))*(abs(x) < 1)';
ezplot(g,[-2 2]);


disp ('*** aufgabe 15');
% \begin{aufg}[0]
% Sei \lstinline!A=hilb(n)! und \lstinline!x=ones(n,1)!. Berechnen Sie
%   für $n=5$ und $n=15$ den Vektor $b=A*x$, \lstinline!norm(x-A\b)! und die Kondition
%   von $A$. Was stellen Sie fest? Erklären Sie das Ergebnis!
% \end{aufg}


clear
n = 15;
A = hilb(n);
x = ones(n,1);
b = A*x
norm(x - A\b)
cond (A)

disp([ 'Da die Hilbertmatrix schlecht konditioniert ist, und dieser Effekt' ...
    'mit der Groesse steigt, ist auch das loesen des linearen Gleichungssystems ' ...
    'aufgrund von numerischen Rundungsfehlern instabil und bricht bereits frueh zusammen' ]);



\begin{aufg}[0]
Finde die Lösung $x$ von $Ax=b$ mit 
\[ A:=\left( \begin{array}{cccc} 
2 & 3 & 4 & 5 \\ 
1 &    1 &    1 &    1\\
1 &    0 &    1 &    0 \\
9 &     3 &    2 &    1
\end{array} \right) , \qquad b:=\left( \begin{array}{c} 
14\\
     4\\
     2\\
    15
\end{array} \right) . \] 
\end{aufg}
cond?
disp('*** aufgabe 1');
clear
A = [ 2 3 4 5; 1 1 1 1 ; 1 0 1 0; 9 3 2 1];
b = [14 4 2 15];
x = A\b'

%-----------------------------------------------------------------------------------
% \begin{aufg}
% Ein Graph besteht aus einer Eckenmenge und einer Menge von Kanten. In {MATLAB}
% soll nun die Menge der Eckpunkte  durch einen Cell-Array von Strings realisiert
% werden. Die Kanten sollen durch eine Struktur mit den Feldern \mcode{InEcke}
% und \mcode{OutEcke} realisiert sein. Die Kanten und Ecken sollen wiederum eine
% Struktur bilden.
% \begin{itemize}
% \item Schreiben Sie eine Funktion, die einen Graphen aus einer Datei
%   ausliest. Überlegen Sie sich eine sinnvolle Struktur der Datei. Legen Sie
%   eine Beispieldatei an.
% \item Schreiben Sie eine Funktion, die den Graphen wiederum in eine Datei
%   schreibt. 
% \item Schreiben Sie eine Funktion, die den Graphen grafisch darstellt. Ordnen
%   Sie die Ecken dazu regelm\"a{\ss}ig in einem Kreis an. Beschriften Sie die Ecken!
% \end{itemize} 
% \end{aufg}

% \begin{aufg}[0]
% \label{exp}
%  loesung machen
% 
% Warum werden die Ergebnisse für negative $x$ groß? Warum sehen sie für positive x klein aus? Sind sie
% wirklich klein? Oder kann man sie nur nicht sehen? Was passiert, wenn man
% sich nur positive x ansieht? Man verändere das Programm an den richtigen
% Stellen, um sich die Lage genauer anzusehen.
% \end{aufg}

%-----------------------------------------------------------------------------------
% \begin{aufg}[0]
% doofe aufgabe..
% Welche Werte besitzen $x1$, $x2$, $x3$  am Ende der jeweiligen Eingaben?
% \begin{itemize}
% \item (a) 
% \begin{lstlisting}
% x = [ 1 2 3 4];
% y = [ 0 3 2 4];
% x1 = (y-x > 0) & (x ~= 1)
% \end{lstlisting}
% \item (b)
% \begin{lstlisting}
% x = sin(1:100);
% x2 = length(x)
% \end{lstlisting}
% \item (c)
% \begin{lstlisting}
% x = linspace(0,1,10);
% y = 1:2:6;
% x3 = x(y)
% \end{lstlisting}
% \end{itemize} 
% \end{aufg}
% 
% \begin{aufg}[0]
% doofe aufgabe..
% Die folgenden Befehlszeilen sind fehlerhaft. Erkl\"aren Sie jeweils den Fehler!
% \begin{itemize}
% \item (a)
% \begin{lstlisting}
% x = 100:200;
% y = linspace(300,400,100);
% z = x.*y.*2
% \end{lstlisting}
% \item (b)
% \begin{lstlisting}
% clear all
% z(5) = 10;
% a = (6:10).^z;
% b = a.*ones(5,1)
% \end{lstlisting}
% 
% \end{itemize} 
% 
% \end{aufg}

% %-----------------------------------------------------------------------------------
% \begin{aufg}[0]
% Plotten Sie   auf dem
%   Intervall $[-\pi, 2 \pi]$ die Funktion $h(x)=\sin (x) {\cos
%   (2x)}$. Unterteilen Sie  die $x$-Achse in
%   $\pi/2$-Schritte, und beschriften Sie diese. Fügen Sie eine Legende
%   in Schriftgröße $21$ hinzu. Ändern Sie auch die Schriftgröße der
%   Achsenbeschriftung.
% \end{aufg}

%--------------------------------------------------
\begin{aufg}[0]
Finde die Lösung $x$ von $Ax=b$ mit 
{ \[ A:=\left( \begin{array}{ccc} 
1 & 2 & 3 \\ 
4 &    5 &    6\\
7 &    8 &    9  
\end{array} \right) , \qquad b:=\left( \begin{array}{c} 
6\\
     15\\
     24
\end{array} \right) . \] }
\end{aufg}
cond?
disp('*** aufgabe 2');
clear
A = [ 1 2 3; 4 5 6; 7 8 9];
b = [6 15 24];
x = A\b'