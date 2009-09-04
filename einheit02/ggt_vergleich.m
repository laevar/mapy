% ggt_vergleich.m

% iterativ
tic
for i=1:100
    ggt(1234,5678);
end
time1=toc;
fprintf('\nZeitverbrauch direktes Verfahren: %f',time1);

% rekursiv
tic
for i=1:100
    ggt_rekursiv(1234,5678);
end
time2=toc;
fprintf('\nZeitverbrauch rekursives  Verfahren: %f',time2);

