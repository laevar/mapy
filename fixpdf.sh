#!/bin/bash
for einh in einheit0*/*.pdf; do
	ls $einh
	./pdf2pdf $einh
done
