#!/bin/bash
outfile=loesungen.tex
rm $outfile
#a2ps -r -A -3 -M A4 einheit0*/uebung/*.m -o $outfile
echo "\documentclass[a4paper,10pt,DIV15]{scrartcl}
\usepackage[psamsfonts]{amssymb}
\usepackage{amsmath}
\usepackage[svgnames]{xcolor} %color definitions
\input{common_header.tex}
\begin{document}
\begin{center}
\textbf{\LARGE Einf\"uhrung in MATLAB}\\
\end{center}
\begin{minipage}{6cm}
Jochen Schulz
\end{minipage}\hfill

" >> $outfile

for einh in einheit0*; do
    echo "****" $einh
	nr=$(echo $einh | sed 's/[a-z]//g')
	rm $einh/uebung/loesungen$nr.zip
	zip -9r $einh/uebung/loesungen$nr.zip $einh/uebung/e*
	echo "\section{$einh}" >> $outfile
	echo "\setcounter{zaehler}{0}" >> $outfile
	for aufg in $einh/uebung/e*; do
		texfile=$(ls $aufg/*.tex)
        echo $texfile $aufg
		echo "\input{$texfile}" >> $outfile
		for file in $(find $aufg/ -name "*.m" -or -name "*.c"); do
			echo "" >> $outfile
			echo "\textbf{$file}" | sed  's/_/\\_/g' >> $outfile
			echo "\lstinputlisting{$file}"  >> $outfile
		done
	done
done
echo "\end{document}" >> $outfile
xelatex $outfile
