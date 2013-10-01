# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 20:29:01 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def countstr(string,ch):
    anz = 0
    # Alle Zeichen des String mit dem gegebenen Zeichen vergleichen
    for idx in range(0,len(string)):
        if string[idx] == ch:
            # Zeichen ist gleich, Zaehle Anzahl hoch
            anz += 1
    return anz

print countstr('abcdeada','a')
