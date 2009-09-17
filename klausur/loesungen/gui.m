function gui()
fig = figure('tag','fig');

global han;
han.axe1 = axes ('parent',fig,'position',[0.1 0.2 0.4 0.4], 'units','normalized');
han.axe2 = axes ('parent',fig,'position',[0.5 0.2 0.4 0.4], 'units','normalized');

han.edit = uicontrol(fig,'style','edit','position',[0.2 0.8 0.2 0.05], ...
  'units','normalized','string','cubic', 'Callback','gcallback' );
