#!/bin/bash
iconv -f iso-8859-1 -t utf-8 ${1}/${1}.tex > dummy
mv dummy ${1}/${1}.tex
sed -i 's/begin{slide}{/begin{frame}\[fragile\]\\frametitle{/g' ${1}/${1}.tex
sed -i 's/end{slide}/end{frame}/g' ${1}/${1}.tex
sed -i 's/\\underline/\\alert/g' ${1}/${1}.tex
sed -i 's/begin{bunt}/begin{lstlisting}/g' ${1}/${1}.tex
sed -i 's/end{bunt}/end{lstlisting}/g' ${1}/${1}.tex
sed -i 's/begin{bunt2}/begin{lstlisting}/g' ${1}/${1}.tex
sed -i 's/end{bunt2}/end{lstlisting}/g' ${1}/${1}.tex
sed -i 's/\\verb+\([^+]*\)+/\\lstinline!\1!/g' ${1}/${1}.tex
sed -i 's/{\\blue/\\alert{/g' ${1}/${1}.tex
sed -i 's/{\\green/\\alert{/g' ${1}/${1}.tex
sed -i 's/{\\red/\\alert{/g' ${1}/${1}.tex
sed -i 's/slides_sources\/bilder03/figures/g' ${1}/${1}.tex
sed -i 's/[.]eps//g' ${1}/${1}.tex
