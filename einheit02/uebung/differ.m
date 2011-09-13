h = 0.01:0.01:1; % naiver Versuch
h = h.^5;% verbesserter Versuch
eplus = exp(h);
eminus = exp(-h);
zentral = (eplus-eminus)./(2*h);
absfehler = abs(zentral-1.0);
%plot(h,absfehler) % naiver Versuch
loglog(h,absfehler) % besserer Versuch
