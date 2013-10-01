# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 19:52:11 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

hc = []
hc.append(array(arange(0.01,1,0.01))) # naiver Versuch
hc.append(hc[0]**5) # verbesserter Versuch
for i in range(0,2):
    h = hc[i]
    eplus = exp(h)
    eminus = exp(-h)
    zentral = (eplus-eminus)/(2*h)
    absfehler = abs(zentral-1.0)
    if i == 0:
        # naiver Versuch
        # Fehler geht runter fuer kleineres h. Das ist zu erwarten, aber
        # man sieht die Probleme nicht.
        figure()
        plot(h,absfehler) 
    else:
        figure()
        # besserer Versuch
        # Fehler geht runter bis er dann wieder groesser wird!
        # wieder ein Problem von numerischer Genauigkeit
        loglog(h,absfehler) 
show()
