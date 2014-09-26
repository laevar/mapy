# -*- coding: utf-8 -*-
"""
Created on Mon Sep  9 17:57:33 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def sierpinski(ecke1,ecke2,ecke3,level):
    """Teilt das Dreieck auf in 3 Dreiecke (level >0) 
    Plotten des Dreiecks ( level =0)"""
    if level == 0:
        fill ([ecke1[0],ecke2[0],ecke3[0]],[ecke1[1],ecke2[1],ecke3[1]],'r')
    else:
        ecke12 = (ecke1+ecke2)/2.
        ecke13 = (ecke1+ecke3)/2.
        ecke23 = (ecke2+ecke3)/2.
        sierpinski(ecke1,ecke12,ecke13,level-1)
        sierpinski(ecke12,ecke2,ecke23,level-1)
        sierpinski(ecke13,ecke23,ecke3,level-1)
        
level = 4
ecke1 = array([0,0])
ecke2 = array([1,0])
ecke3 = array([0.5, sqrt(3)/2])
figure
sierpinski (ecke1 ,ecke2 ,ecke3 , level)
title ('Sierpinski Dreieck , Level ={}'.format(level))
show()
