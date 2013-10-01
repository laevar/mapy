# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 11:59:06 2013

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


level = 3

y1 = array([0,0])
y2 = array([2.,1.])

figure()
vierstrecker(y1,y2,level)
show()

