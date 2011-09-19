% profile inline-function vs. native function
x = linspace(1,100,100000);
fin = inline('exp(x).*x.^2');
profile on -history
fin(x);
fout(x);
profile viewer
p = profile('info');
for n = 1:size(p.FunctionHistory,2)
 if p.FunctionHistory(1,n)==0
        str = 'entering function: ';
 else
        str = 'exiting function: ';
 end
 disp([str p.FunctionTable(p.FunctionHistory(2,n)).FunctionName])
end