# -*- coding: utf-8 -*-
"""
Created on Wed Jan 22 16:02:35 2014

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def mandel():
    x = linspace(-2.1, 0.6, 601)
    y = linspace(-1.1, 1.1, 401)
    [X,Y] = meshgrid(x,y)
    C = (X + 1j*Y)
    Z = copy(C) # beware: otherwise it wouldn't be a copy.

    it_max = 50
    Anz = zeros(Z.shape)

    for k in range(1,it_max):
        Z = Z**2+C
        Anz += isfinite(Z)

    #alternative: pcolor(X,Y,Anz) ist aber langsam
    imshow(Anz)
    show() # noetig um das Bild neu zu malen
    title('Mandelbrot Set', fontsize=16)

mandel()
