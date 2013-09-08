# -*- coding: utf-8 -*-
"""
Created on Sun Sep  8 14:21:55 2013

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
        
anz_loesungen, loesungen = quad_gl(3,1)
print anz_loesungen, loesungen
