# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 11:20:56 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface
from poly import ausw_poly2

def interpol2(x,y):
    #Aufstellen des lin. GLS
    A = vander(x)
    #Loesen des lin GLS
    p = solve(A,y)
    return p
    
#berechnet die polynomiale Interpolation fuer 1/(1+x^2)
#Stuetzstellen
x = linspace(-5,5,13)
y = 1/(1+x*x)
plot(x,y,'or',markersize=8)
#Berechnen der Koeffizienten
p = interpol2(x,y)
#Plotten
x1 = linspace(-5,5,100)
y1 = ausw_poly2(p[::-1],x1)
y2 = 1/(1+x1*x1)
plot(x1,y1,x1,y2,linewidth=3)
xlim([-6,6])
grid('on')
box('on')
legend(('Interpolationspunkte','Interpolierende von f','$f(x)=1/(1+x^2)$'),loc='best')
show()


