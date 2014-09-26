# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 23:32:04 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def vergleich_gr(string1, string2):
    """vergleich_gr vergleicht die Strings string1 und string2.
              Falls string1 lexikografisch vor string2 ist,
              so ist flag=1, sonst flag=0"""
    l1 = len(string1)
    l2 = len(string2)
    for k in range(0,min(l1,l2)):
        if string1[k]<string2[k]:
            flag = 1
            return flag
        if string1[k]>string2[k]:
            flag = 0
            return flag
    if l2>l1:
        flag = 1
    else:
        flag = 0
    return flag


def bubblesort(dateiname1, dateiname2):
   """ sortieren   Die Datei dateiname1 wird
             alphabetisch sortiert
             und als dateiname2
             abgespeichert.
   INPUT:    STRING dateiname1
             STRING dateiname2"""
   # Datei laden
   fid = open(dateiname1,'r')
   # Datei lesen
   inhalt = []
   for line in fid:
       inhalt.append(line)
   fid.close()
   # Sortieren
   sortierungen = 1
   while sortierungen>0:
       sortierungen = 0
       for k in range(0,len(inhalt)-1):
           # vergleich_gr(a,b) ist 1 fuer a<b, 0 sonst
           if vergleich_gr(inhalt[k+1],inhalt[k]):
               hilf = inhalt[k]
               inhalt[k] = inhalt[k+1]
               inhalt[k+1] = hilf
               sortierungen += 1
   # Datei schreiben
   fid = open(dateiname2,'w')
   for k in inhalt:
       fid.write('{}'.format(k))
    
   fid.close()

bubblesort('liste_unsorted.txt','listesort.txt')