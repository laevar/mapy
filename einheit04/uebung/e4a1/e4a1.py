# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 14:44:40 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface
import re

# Datei oeffnen
fid = open('daten.dat','r')
# Daten lesen (x, f(x) ignorieren)
daten = genfromtxt(fid)
fid.close()
# das x, f(x) am Ende macht alles etwas komplizierter wenn wir das auch
# auslesen wollen. Mit den Mitteln die wir kennen ist es am einfachsten
# einfach nochmal per regex nach dem x und f(x) zu suchen
# Sonstige Textinformationen aus der Datei lesen

fid = open('daten.dat','r')
alles = fid.read()
fid.close()
daten = re.findall('([\d.-]+)\s+([\d.-]+)',alles)
daten = array(daten,dtype=float)
lz = re.search('([a-z()]+)\s+([a-z()]+)',alles)

x = daten[:,0]
f = daten[:,1]
figure()
plot (x,f)
xlabel(lz.group(1))
ylabel(lz.group(2))