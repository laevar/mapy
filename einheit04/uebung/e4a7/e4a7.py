# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 17:37:36 2013

@author: jschulz1
"""
import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def folgenmin (xstart):
    """ Berechnet die kleinste Zahl n, fuer die     
    abs(x_(n+1) - x_n) <= 10^-4 gilt
        
    input: 
        xstart: Startwert der Folge
    output:
        minzahl:  kleinste Zahl die die Bedingung erfuellt"""

    x = []
    x.append(xstart)
    x.append(1./2*x[0] + 1./x[0])

    n = 0
    while ( abs( x[n+1] - x[n] ) >  1e-4 ):
        n += 1
        x.append (1./2*x[n] + 1./x[n])
        print ('Differenz der Folgeglieder: {}'.format(abs( x[n+1] - x[n] )) )
    return n

print folgenmin(2)

