# -*- coding: utf-8 -*-
"""
Created on Sun Sep 15 23:23:19 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface


def newton_example():
    # Programm zur Loesung von x=cos(x)
    xn = 1 # Startwert Newton
    xr = 0.739085133215161 # wahre Loesung
    xnlist = xn-xr # Fehlerliste 
    for i in range(0,15):
        xn = xn-(xn-cos(xn))/(1+sin(xn)) # Newton
        xnlist = hstack((xnlist, xn-xr))
    print xnlist
    #Plotausgabe
    semilogy(range(1,len(xnlist)+1),abs(xnlist),'r*-')
    title('Loesung von x=cos(x)')
    xlabel('Iterationen')
    ylabel('Fehler im X-Wert')


def newton_konvergenz():
    n = 1000
    x = linspace(-1,1,n)
    [X,Y] = meshgrid(x,x)
    Z = X + 1j*Y
    TOL = 0.02
    V = zeros((n,n))
    for idx in range(0,20):
        Z = Z - (Z**3-1)/(3*Z**2)
        ind = find (Z**3 - 1 < TOL)
        V.ravel()[ind] = angle(Z.ravel()[ind])
    figure()
    imshow(V)
    colorbar()
    title('Konvergenzverhalten Newton')
    xlabel('x'),ylabel('i*y')
    return V

V = newton_konvergenz()
show()
print roots([1, 0, 0, -1])