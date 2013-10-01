# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 17:36:16 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface


def mandelbox (cent, xsize, ysize):
    x = linspace(cent[0]-xsize/2., cent[0]+xsize/2., 601)
    y = linspace(cent[1]-ysize/2., cent[1]+ysize/2., 601)
    [X,Y] = meshgrid(x,y)
    C = (X + 1j*Y)
    Z = copy(C)

    it_max = 50
    Anz = zeros(Z.shape)

    for k in range(1,it_max):
        Z = Z**2+C
        Anz += isfinite(Z)

    #alternative: pcolor(X,Y,Anz) ist aber langsam
    imshow(Anz,extent=[min(x),max(x),min(y),max(y)],origin='lower')
    draw() # noetig um das Bild neu zu malen
    title('Mandelbrot Set', fontsize=16)


xsize = 2.
ysize = 2.

#zentrum 0,0
cent = [0., 0.]
mandelbox(cent, xsize, ysize)

while True:
    # Maus-Eingabe holen
    p = ginput(1,show_clicks=True,timeout=0)
    cent = [p[0][0], p[0][1]]
    # reinzoomen  
    xsize = xsize/1.8
    ysize = ysize/1.8
    print xsize, ysize
    # mandelbrot-menge berechnen und ausgeben
    mandelbox (cent, xsize, ysize)
    # rauszoomen  
    # um das rauszoomen hinzubekommen muesste man Funktionalitaeten
    # nutzen, die ich nicht eingefuehrt hatte. Ich ignoriere es hier
    # vorerst einfach mal
    #    xmin = -3/2*xdiff/2;
    #    xmax = 3/2*xdiff/2;
    #    ymin = -3/2*ydiff/2;
    #    ymax = 3/2*ydiff/2;
