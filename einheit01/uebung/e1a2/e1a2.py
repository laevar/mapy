# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 18:30:01 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

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
    
a=np.array([-36, 9, 40, -10, -4, 1])

x = np.linspace(-3,4,40) # Betrachte [0,4]
y = ausw_poly2(a,x)

B = zeros((5,5))
B[:,4] = -a[0:5]
B[1:5,0:4] = eye(4)
eb = eig(B)

#Plotten
plot(x,y,'r+-',eb[0],zeros(len(eb[0])),'b*', linewidth=3,markersize=12)
show()
