# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 17:11:03 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def einlesen (filename):
    """ liest eine Datei ein und gibt diverse Informationen ueber diese Datei
     zurueck
     input: 
         filename: dateiname der einzulesenden datei
     output:
         nrrows:   anzahl der zeilen in der Datei 
         nrchars:  anzahl der Zeichen in der Datei
         mcuchar:  der haufigst vorkommene Buchstabe"""

    fid = open(filename,'r')
    nrrows = 0
    nrchars = 0
    mcuchara = {}
    for tline in fid:
        #anzahl zeilen
        nrrows += 1
        # anzahl chars
        nrchars += len(tline)
        #der am haeufigsten vorkommene buchstabe
        for c in tline:
            if not mcuchara.has_key(c) :
                mcuchara[c] = 0
            if c != ' ': #alle Leerzeichen ausnehmen
                mcuchara[c] += 1
    #Bilde Maximum ueber alle Zeichen
    #iterkeys() geht alle keys durch und mit key= in der max-funktion
    # kann den eigentlichen vergleich machen, aber den index zurueckbekommen
    hz = max(mcuchara.iterkeys(), key=(lambda key: mcuchara[key]))
    #mcuchar = char(mcucharidx)
    fid.close()
    return nrrows, nrchars, hz

print einlesen('text.txt')