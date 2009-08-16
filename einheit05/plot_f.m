%----------------------------
%    plot_f.m
%
% zeichnet die Sobolevsche 
% Mittelungsfunktion f.m
%
% Gerd Rapin    7.12.03
%----------------------------

% Eindimensionaler Plot
subplot(2,2,1),
ezplot(@f);

% Zweidimensionaler Plot
subplot(2,2,2),
ezmesh(@f);

% Zweidimensionaler Plot
subplot(2,2,3),
ezsurfc(@f);

% Zweidimensionaler Plot
subplot(2,2,4),
ezcontourf(@f);
