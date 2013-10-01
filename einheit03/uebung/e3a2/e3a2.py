# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 13:20:50 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def vierstrecker(y1,y2,level):
    """ Teilt die Strecke y1-y2 auf in4 Teilstrecken (level>0)
     input:
         y1:   punkt1
         y2:   punkt2
         level:level der aufteilungen"""

    if (level == 0):
        plot([y1[0],y2[0]],[y1[1],y2[1]],'r*-',linewidth=1)
    else:
        # neue Punkte generieren  
        z1 = 2./3*y1 + 1./3*y2
        z2 = sqrt(3)/6*dot([[0, 1.] , [-1., 0]],(y1-y2)) + 1./2*(y1+y2)
        z3 = 1./3*y1 + 2./3*y2
        # rekursiver Aufruf fuer die Teilstrecken
        vierstrecker(y1,z1,level-1)
        vierstrecker(z1,z2,level-1)
        vierstrecker(z2,z3,level-1)
        vierstrecker(z3,y2,level-1)


def plot_neck(n):
    """ plotted ein regelmaessiges n-eck
     input:
         n : anzahl ecken
     output:
         ecken : die koordinaten der ecken """

    #Erzeuge alle Eckpunkte
    x = sin(2*pi*(arange(1,n+1))/n)
    y = cos(2*pi*(arange(1,n+1))/n)
    ecken = vstack((x,y))

    #plot n-Eck
    figure()
    axis('equal')
    x = hstack((x , x[0]))
    y = hstack((y , y[0]))
    plot(x,y, linewidth=2)
    return ecken


n = 6
ecken = plot_neck(n)

#Fuege ersten Punkt doppelt ein, damit das Polygon geschlossen werden kann.
streckenpunkte = hstack((ecken , ecken[:,0][:,None]))
figure()
for idx in range(0,n):
    vierstrecker(streckenpunkte[:,idx],streckenpunkte[:,idx+1],3)
axis('tight')
show()

