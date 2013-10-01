# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 20:20:07 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def quad_gl(p,q):
    d = p**2/4-q # Diskriminante
    # 2 Loesungen
    if d>0:
        anz_loesungen=2
        loesungen=array([-p/2-sqrt(d), -p/2+sqrt(d)])
    # 1 Loesung
    if d==0:
        anz_loesungen=1
        loesungen=array([-p/2])
    # 0 Loesungen
    if d<0:
        anz_loesungen=0
        loesungen=array([])
    return anz_loesungen, loesungen

print 'f(x) = x^2-2'
p = 0
q = -2
print  quad_gl(p,q)
#ueberpruefung
print roots([1, 0, -2])

print 'f(x) = x^2-2x +1'
p = -2
q = 1
print quad_gl(p,q)
#ueberpruefung
print roots([1, -2, 1] )

print 'f(x) = x^2-4x +10'
p = -4
q = 10
print quad_gl(p,q)
#ueberpruefung
print roots([1, -4, 10] )
