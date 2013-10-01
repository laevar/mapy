# -*- coding: utf-8 -*-
"""
Created on Mon Sep  9 17:43:39 2013

@author: jschulz1
"""

def ggt_rekursiv(a,b):
    """ggt_rekursiv berechnet den groessten gemeinsamen Teiler (ggT)""" 
    if a != b:
        if a>b:
            a -= b
        else:
            b -= a
        return ggt_rekursiv(a,b)
    return a
        
print ggt_rekursiv(56,70)   