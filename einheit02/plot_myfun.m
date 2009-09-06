% plot_myfun
global alpha
alpha_w = [ 0.4 0. 6 1 1.5 2];
for i = 1:length(alpha_w);
    alpha = alpha_w(i);
    fplot(@myfun,[0.1,1]);
    hold on;
end
hold off;