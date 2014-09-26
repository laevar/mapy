# -*- coding: utf-8 -*-
"""
Created on Fri Sep 13 00:23:11 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface

def randwertaufgabe(n):
    """berechnet mit Finiten Differenzen die Lösung u von
      -u''=f in (0,1), u(0)=u(1)=0
      n =  Anzahl Stuetzstellen      
      @author Gerd Rapin, Jochen Schulz """

    # Erzeugen des Gitters
    x = linspace(0,1,n)
    x_i = x[1:n-1]
    # Aufstellen des lin. Gls.
    A = diag(2*ones(n-2),0)+diag(-1*ones(n-3),-1)+diag(-1*ones(n-3),1)
    F = (1./n)**2*exp(x_i) # rechte Seite fuer f=exp(x) 

    # Loesen des lin. Gls.
    z_i = solve(A,F)

    # Darstellen der Loesung
    z = hstack((0, z_i, 0))
    plot(x,z,'r*-');
    show()
    #plot(x_i,exp(x_i))

randwertaufgabe(41)