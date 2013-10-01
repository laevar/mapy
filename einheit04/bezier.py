# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 22:42:43 2013

@author: jschulz1
"""
import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

figure()
axis ([0,1,0,1])
x = zeros((4,))
y = zeros((4,))
# Eingabe der 4 Kontrollpunkte
for k  in range(0,4):
    p = ginput(1)
    x[k] = p[0][0]
    y[k] = p[0][1]
    plot(x[k],y[k],'*')
    text(x[k]+0.01 ,y[k]+0.01 , 'P_{}'.format(k) )
    draw() #zeichnet das aktuelle figure neu
# Zeichnen der Kontrollpolygons
fill(x,y,'y')
u = arange(0,1,0.01)
umat = array([(1 -u)**3, 3*u*(1 -u)**2, 3*u**2*(1-u), u**3 ])
plot(dot(x,umat) , dot(y,umat) ,'--',linewidth=4)
draw()
