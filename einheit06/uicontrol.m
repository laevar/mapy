h1 = warndlg ('NameFenster ','Nachricht ')
h2 = errordlg ('NameFenster ','Nachricht ')
ans = questdlg ('NameFenster ','Nachricht ')
ant = inputdlg ({ 'Frage 1','Frage 2','Frage3 '},...
'NameFenster ' ,[1 2 3], {'defAnt1 ','defAnt2 ','defAnt3 '})



figure
u = uicontrol ('style','listbox',...
'string','Option1 | Option2 | Option3',...
'units','centimeters','position' ,[0 0 3 3])

u2 = uicontrol('style','radio',...
'string','Option1',...
'units','centimeters','position' ,[0 3 9 8])


