# -*- coding: utf-8 -*-
"""
Created on Tue Sep 30 16:48:45 2014

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
from scipy import optimize
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def newfix():
    # Programm zur Loesung von x=cos(x)
    xr = 0.739085133215161 # wahre Loesung
    anzit = 15
    xn = zeros(anzit+1)
    xf = zeros(anzit+1)
    xn[0] = 1# Startwert
    xf[0] = 1# Startwert
    for i in range(0,anzit):
        xn[i+1] = xn[i]-(xn[i]-cos(xn[i]))/(1+sin(xn[i])) # Newton
        xf[i+1] = cos(xf[i]) #Fixpunktiteration
    xnlist = abs(xn-xr) # Fehlerliste 
    xflist = abs(xf-xr) # Fehlerliste 
    return xnlist,xflist

sol, dic, _,_,_,xvec = optimize.fmin(lambda x:abs(cos(x)-x), 1, full_output =1, disp =1, retall=1)
xblist = [abs(i[0]-0.739085133215161) for i in xvec]    


xnlist,xflist = newfix()
#Plotausgabe
semilogy(range(0,len(xnlist)),abs(xnlist),'r*-')
semilogy(range(0,len(xflist)),abs(xflist),'b*-')
semilogy(range(0,len(xblist)),xblist,'g*-')
legend(('newton','fixpunktiteration','nelder-mead'))
title('Loesung von x=cos(x)')
xlabel('Iterationen')
ylabel('Fehler im X-Wert')
show()