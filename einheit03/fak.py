# -*- coding: utf-8 -*-
"""
Created on Mon Sep  9 17:07:11 2013

@author: jschulz1
"""


def fak_it(n):
    fak = 1
    for i in range(1,n+1):
        fak = fak*i
    return fak

    
def fak(n):
    if (n == 1):
        res = 1
    else:
        res = n*fak(n -1)
    return res
    
#%timeit fak_it(20)