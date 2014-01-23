# -*- coding: utf-8 -*-
"""
Created on Wed Jan 22 14:59:45 2014

@author: jschulz1
"""

cdef extern from "math.h":
    double sin(double x)

def csin(arg):
    return sin(arg)