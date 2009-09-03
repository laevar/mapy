#!/bin/bash
texfile=${1}/uebung/aufgaben_einh07.tex
iconv -f iso-8859-1 -t utf-8 $texfile > dummy
mv dummy $texfile
sed -i 's/\\underline/\\alert/g' $texfile
sed -i 's/begin{bunt}/begin{lstlisting}/g' $texfile
sed -i 's/end{bunt}/end{lstlisting}/g' $texfile
sed -i 's/begin{bunt2}/begin{lstlisting}/g' $texfile
sed -i 's/end{bunt2}/end{lstlisting}/g' $texfile
sed -i 's/\\verb+\([^+]*\)+/\\mcode{\1}/g' $texfile
sed -i 's/{\\blue/\\alert{/g' $texfile
sed -i 's/{\\green/\\alert{/g' $texfile
sed -i 's/{\\red/\\alert{/g' $texfile
sed -i 's/slides_sources\/bilder07/figures/g' $texfile
sed -i 's/[.]eps//g' $texfile
