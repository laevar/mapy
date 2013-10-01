# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 17:37:36 2013

@author: jschulz1
"""
import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def bernstein(n):
    """ Bernstein-Polynome (n!/(i!(n-i)!)* t^i (1-t)^(n-i)"""
    t = linspace(0,1,20)

    bmat = zeros((20,n+1))
    for i in range(0,n+1):
        bmat[:,i] = sp.factorial(n)/(sp.factorial(i)*sp.factorial(n-i))*t**i*(1-t)**(n-i)
    return bmat

def bezier(n):
    """ Input: n Anzahl der Kontrollpunkte"""
    figure()

    x = zeros(n)
    y = zeros(n)
    # Kontrollpunkte generieren und plotten
    for k in range(0,n):
        x[k] = log(k+1)
        y[k] = log(k+1)+sin(k+1)
        plot(x[k],y[k],'*')
        text(x[k]+0.01,y[k]+0.01,'P_{}'.format(k))

    # Zeichnen des Kontrollpolygons
    fill(x,y,'y')

    # bernstein-polynome 
    bmat = bernstein(n-1)
    #Bezier-Polynom berechnen und plotten
    plot(dot(bmat,x), dot(bmat,y),'--',linewidth=4)
    show()


bezier(6)