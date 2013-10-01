# -*- coding: utf-8 -*-
"""
Created on Tue Sep 10 20:06:06 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

# berechnet approximativ ein Integral 
# ueber  (0,1) durch die Mittelpunktregel
N = 10# Anzahl Unterteilungen
x = arange(0+1./(2*N),1-1./(2*N),1./N)
y = x**3
# Berechnung des Integrals
result = sum(y)*(1./N)

# Plot
for i in arange(1.,N+1):
    fill_between([(i-1)/N, i/N],[((i-0.5)/N)**3,  ((i-0.5)/N)**3],facecolor='r')
plot(arange(0,1,0.01),arange(0,1,0.01)**3,linewidth=3)
title('$\int_0^1 x^3$ = {} fuer N = {}'.format(result,N),fontsize=20)