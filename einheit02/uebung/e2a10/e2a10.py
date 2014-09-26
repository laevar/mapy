# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 20:29:22 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

# 'elegant' kann vieles heissen und es ist auch gewollt gewesen das man
# sich selbst aussucht, was elegant ist. Hier benutze ich eine Loesung mit
# Dictionaries weil ich die Information mit abspeichern kann, das es die
# Werte des Logarithmus sind. 

tabelle = {}
for i in range(1,11):
    tabelle[i] = 'ln({})'.format(i),log(i)

# Ausgabe
for key, value in tabelle.iteritems():
    print '{}: {}'.format(value[0],value[1])


# ganz normale Listen sind ebenfalls gut
tabelle = []
for i in range(1,11):
    tabelle.append(('ln({})'.format(i),log(i)))
# Ausgabe
for item in tabelle:
    print '{}: {}'.format(item[0],item[1])
    
    
# mit structered arrays
tabtype = dtype([('Index','i4'),('Wert','f8')])
tabelle = zeros(10,dtype=tabtype)
for i in range(1,11):
    tabelle[i-1]['Index'] = i    
    tabelle[i-1]['Wert'] = log(i)
#Alternativ:
tabelle = array([(i,log(i)) for i in range(1,11)],dtype=tabtype)
# Ausgabe
for item in tabelle:
    print '{}: {}'.format(item['Index'],item['Wert'])
    
    