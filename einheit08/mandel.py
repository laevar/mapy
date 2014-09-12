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
import time

def mandel():
    x1 = linspace(-2.1, 0.6, 3001)
    y1 = linspace(-1.1, 1.1, 2001)
    [X,Y] = meshgrid(x1,y1)

    it_max = 50
    Anz = zeros(X.shape)

    C = (X + 1j*Y)
    Z = copy(C) # beware: otherwise it wouldn't be a copy.

    for k in range(1,it_max):
        Z = Z**2+C
        Anz += isfinite(Z)
    #for i in range(0,len(x1)):
    #    for j in range(0,len(y1)):
    #        m = 0
    #        x = x1[i]
    #        y = y1[j]
    #        while (sqrt(x**2+y**2)<2 and m<it_max):
    #            t = x
    #            x = x1[i]+x**2-y**2
    #            y = y1[j]+2*t*y
    #            m += 1
    #        Anz[j,i]=m
    

    #alternative: pcolor(X,Y,Anz) ist aber langsam
    #imshow(Anz)
    #show() # noetig um das Bild neu zu malen
    #title('Mandelbrot Set', fontsize=16)

start = time.time()
mandel()
end = time.time()
secs = end - start
print "solution after {} s".format(secs)
