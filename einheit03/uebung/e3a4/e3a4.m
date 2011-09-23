disp('*** aufgabe 4');
clear

x = linspace(0,1,100);

figure
hold on
xlabel('x');
ylabel('y');
grid on; box on;
xlim ([-0.1 1.1]);
ylim ([-1.1 1.1]);
plot (x,sin(0.5*pi*x),'b--','LineWidth',2);
plot (x,sin(pi*x),'k:','LineWidth',2);
plot (x,sin(2*pi*x),'g-','LineWidth',2);
plot (x,sin(4*pi*x),'m-.','LineWidth',2);
legend ('sin(0.5 \pi x)','sin(\pi x)','sin(2 \pi x)','sin(4 \pi x)',...
  'Location','SouthWest');