function stop = outfun(x, optimValues, state)
global xnsolve
xnsolve(optimValues.iteration+1) = optimValues.fval;
stop = false;
