# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 20:28:38 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def inverstring (string):
    """Invertiert einen string
     input:
         str : input-string
     output:
         invstr : invertierter string"""
         
    invstr = string[::-1]
    #Manuell mit Schleife
    slen = len(string)
    invstr = ''
    for i in range(0,slen):
        invstr += string[slen-i-1]
    return invstr

print inverstring('qwerty')