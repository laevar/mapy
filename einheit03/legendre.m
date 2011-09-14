%legendre polynome
x = linspace(-1,1,100);
p1 = x;
p2 = (3/2)*x.^2-1/2;
p3 = (5/2)*x.^3-(3/2)*x;
p4 = (35/8)*x.^4 - (15/4)*x.^2+3/8;
plot(x,p1,'r:',x,p2,'g--',x,p3,'b-.',x,p4,'m-','LineWidth',2)

if (1)
    title('Legendre Polynome','FontSize', 20)
    xlabel('x','FontSize', 20)
    ylabel('p_n(x)','FontSize', 20)
    text(0,0.45,'Maximum')
    legend('n=1','n=2','n=3','n=4',4)
    grid on, box on;
    xlim([-1.1,1.1])
end