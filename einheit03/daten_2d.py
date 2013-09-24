# -*- coding: utf-8 -*-
"""
Created on Tue Sep 10 18:55:33 2013

@author: jschulz1
"""
import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

#Daten
n = linspace(0,10,40)
y = n**2.*exp(-n)

#Balkendiagramm
subplot(2,2,1)
bar(n,y),title('Balkendiagramm')

#Histogramm
subplot(2,2,2)
hist(y,5),title('Histogramm')

#Area plot
subplot(2,2,3)
fill(n,2*y)
fill_between(n,3*y,2*y,facecolor='green')
title('Fill plot')

#Tortengrafik
subplot(2,2,4)
pie([ 1,2,3,4],autopct='%1.1f', shadow=True)
title('Tortengrafik')
