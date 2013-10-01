# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 13:58:52 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

#exakt: 
# partielle integration
# \int f' * g = f*g|a^b - \int f*g'
# f'=e^x
# g =x
# f = e^x
# g'=1
# x e^x - e^x|_0^1 = 1

# berechnet approximativ ein Integral 
# ueber  (0,1) durch die Mittelpunktregel
N = 1# Anzahl Unterteilungen
TOL = 1e-4
err = 1
# Schleife um das Integral so gut zu berechnen, dass es innerhalb der TOL
# gelangt
while (err > TOL):
    N += 1
    x = arange(0+1./(2*N),1-1./(2*N),1./N)
    y = x*exp(x)
    # Berechnung des Integrals
    result = sum(y)*(1./N)
    err = abs(1 - result)

print N,err

# Plot
for i in arange(1.,N+1):
    fill_between([(i-1)/N, i/N],[((i-0.5)/N)*((i-0.5)/N)**3,  ((i-0.5)/N)*((i-0.5)/N)**3],facecolor='r')
xp = arange(0,1,0.01)
plot(xp,xp*xp**3,linewidth=3)
title('$\int_0^1 x^3$ = {} fuer N = {}'.format(result,N),fontsize=20)
show()