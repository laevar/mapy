# -*- coding: utf-8 -*-
"""
Created on Thu Sep  5 17:11:33 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def ausw_poly1(a,x):
    """ ausw_poly berechnet den Funktionswert von 
    p(x)=a_1 +a_2 x + a_3 x^2+ ... +a^n x^(n-1)
    INPUT:  a Vektor der Koeffizienten 
            x  auszuwertender Punkt
    OUTPUT: y  Funktionswert (y=p(x))"""

    n = len(a)
    aux_vector = x**np.array(range(0,n))
    return dot(aux_vector,a)
    

def ausw_poly2(a,x):
    """ ausw_poly berechnet den Funktionswert von 
    p(x)=a_1 +a_2 x + a_3 x^2+ ... +a^n x^(n-1)
    INPUT:  a Vektor der Koeffizienten 
            x Vektor der auszuwertenden Punkte
    OUTPUT: y Vektor der Funktionswerte (y=p(x))"""

    n = len(a)
    k = len(x)
    xm = np.array([x])
    A = sp.repeat(xm.T, n,1)
    B = sp.repeat(np.array([range(0,n)]), k,0)
    return dot(A**B,a)
    



