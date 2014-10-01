# -*- coding: utf-8 -*-
"""
Created on Tue Sep 30 16:45:44 2014

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

from poly import ausw_poly2

def vandermonde2(x):
  n = len(x)
  V = zeros((n,n))
  for i in arange(0,n):
    for j in arange(0,n):
      V[i,j] = x[i]**(n-j-1)
  return V

@profile
def interpol2(x,y):
    #Aufstellen des lin. GLS
    A = vander(x)
    A = vandermonde2(x)
    #Loesen des lin GLS
    p = solve(A,y)
    return p

@profile
def interpolation(f1,N):
    assert callable(f1), "Bitte eine Funktion übergeben"
    assert (round (abs(N)) == N) and (N!=0), "Bitte eine natürliche Zahl verwenden"

    #Stuetzstellen
    x = linspace(-5,5,N)
    y = f1(x)
    plot(x,y,'or',markersize=8)
    #Berechnen der Koeffizienten
    p = interpol2(x,y)
    pm = polyfit(x,y,N-1)
    #Plotten
    x1 = linspace(-5,5,100)
    y1 = ausw_poly2(p[::-1],x1)
    y2 = f1(x1)
    plot(x1,y1,x1,y2,linewidth=3)
    xlim([-6,6])
    grid('on')
    box('on')
    legend(('Interpolationspunkte','Interpolierende von f','$f(x)=1/(1+x^2)$'),loc='best')
    #show()

def myfun(x): return x**2

#berechnet die polynomiale Interpolation fuer 1/(1+x^2)

print "mit\n kernprof.py -l -v e6a6.py \n ausführen"

interpolation(myfun,100)