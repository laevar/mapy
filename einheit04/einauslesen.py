# -*- coding: utf-8 -*-
"""
Created on Mon Sep 23 19:00:21 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface
import re


def schreiben():
    waehrung_name = raw_input('Umrechnung fuer welche Waehrung ?')
    print('Ein Euro entspricht wievielen {} ? '.format(waehrung_name))
    umrechnung = float(raw_input(''))
    a = [1,2,3,5,10,20,50,100,200,1000]
    fid = open('umrechnung.txt','w')
    fid.write('Umrechnungstabelle: Euro-{}\n\n'.format(waehrung_name))
    for i in a:
        fid.write('{:7.2f} Euro = {:7.2f} {}\n'.format(i,umrechnung*i,waehrung_name))
    fid.write('\n\n Umrechnungskoeffizient: {:3.2f} \n'.format(umrechnung))
    fid.close()

def lesen():
    #Datei einlesen
    fid = open('umrechnung.txt','r')
    fil = fid.read()
    fid.close()
    
    # Benutze regular Expressions um erste Zeile zu finden und einzulesen
    res = re.search('Umrechnungstabelle: Euro-(.*)',fil)
    waehrung_name = res.group(1)
    # regular expressions fuer alle daten
    daten = re.findall('([\d.]+) Euro =\s*([\d.]+)',fil)
    # konvertieren der liste von tulpen von strings in eine matrix von doubles
    daten = array(daten,dtype=float)
    # finden und setzen der letzten Zeile (Hinweis: nicht effizient)
    res = re.search('Umrechnungskoeffizient: ([\d.]+)',fil)
    umrechnung = float(res.group(1))
    #Ausgabe
    print('Umrechnung: Euro - {}: Kurs: {} \n'.format(waehrung_name,umrechnung))
    for x in daten:
        print(' {:7.2f} Euro  = {:7.2f}'.format(x[0],x[1]))
        
#schreiben()
lesen()