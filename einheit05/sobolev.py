# -*- coding: utf-8 -*-
"""
Created on Fri Sep 13 00:21:52 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface

def sob1d(x):
    """ Sobolevsche Mittelungsfunktion (1d)
    f(x)=exp ( -1/(1 -|x|^2)), |x|<1, und f(x)=0 sonst
    Eingabe : Vektor x
    Ausgabe : Vektot f(x)
    @author: Jochen Schulz"""

    # Berechnen des Funktionswerts
    result = zeros (len(x))
    for k in range(0, len(x)):
        if abs(x[k]) <1:
            result[k] = exp (-1/(1 - x[k]**2))
        else:
            result[k] = 0
    return result


def sobnd(*args):
    """ Sobolevsche Mittelungsfunktion
    Eingabe : Matrizen x1 ,x2 ,x3 ,..
    Ausgabe : Matrix result =f(x1 ,x2 ,...)"""

    betrag = 0.
    for i in args:
        betrag += i**2
    dimension = args[0].shape
    result = zeros((dimension[0] ,dimension[1]))
    for j  in range(0,dimension[0]):
        for k in range(0,dimension[1]):
            if betrag[j,k] < 1:
                result[j,k] = exp ( -1/(1 - betrag[j,k]))
            else:
                result[j,k] = 0
    return result


x = linspace(-1,1,30)
f1 = sob1d(x)
figure()
plot(x,f1)

X,Y = meshgrid(x,x)
f2 = sobnd(X,Y)
fig = figure()
ax = Axes3D(fig)
ax.plot_surface(X ,Y ,f2,rstride=1,cstride=1,cmap=cm.jet) 

figure()
contourf(X,Y,f2,10), title('contourf')