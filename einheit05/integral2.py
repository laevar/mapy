# -*- coding: utf-8 -*-
"""
Created on Thu Sep 12 19:26:55 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def integral(N=20,a=(0.,1.)):
    """berechnet approximativ ein Integral 
    ueber  (0,1) durch die Mittelpunktregel"""
    h = (a[1]-a[0])/N
    x = linspace(a[0]+h/2,a[1]-h/2,N)  
    y = x**3
    # Berechnung des Integrals
    result = (a[1]-a[0])*sum(y)*(1./N)

    # Plot
    x1 = linspace (a[0],a[1],N+1)
    figure()
    for i in range(0,N):
        fill_between([ x1[i],x1[i+1]], [y[i],y[i]] ,facecolor='r')
    xplot = arange(a[0],a[1],(a[1]-a[0])/100)
    plot(xplot,xplot**3,linewidth=3)
    title('$\int_0^1 x^3$ = {} fuer N = {}'.format(result,N),fontsize=20)
        

def integral2(f=lambda x: x**3,N=20,a=(0.,1.),fstr='x^3'):
    """berechnet approximativ ein Integral 
    ueber  (0,1) durch die Mittelpunktregel"""
    h = (a[1]-a[0])/N
    x = linspace(a[0]+h/2,a[1]-h/2,N)  
    y = f(x)
    # Berechnung des Integrals
    result = (a[1]-a[0])*sum(y)*(1./N)

    # Plot
    x1 = linspace (a[0],a[1],N+1)
    figure()
    for i in range(0,N):
        fill_between([ x1[i],x1[i+1]], [y[i],y[i]] ,facecolor='r')
    xplot = arange(a[0],a[1],(a[1]-a[0])/100)
    plot(xplot,f(xplot),linewidth=3)
    title('$\int_{{{}}}^{{{}}} {}$ = {} fuer N = {}'.format(a[0],a[1],fstr,result,N),fontsize=20)
    #for arg in args:
    #    t[0]anzahl_parameter = len(args)
        
    #for name, value in kwargs.items():
    #    print '{0} = {1}'.format(name, value)

        
#integral(N=20,a=(0.,1.))
#integral(a=(0.,1.),N=20)
#integral(20,(0.,1.))

integral2(lambda x: log(x**2),20,(1.,5.),fstr='\log(x^2)')