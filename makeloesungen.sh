#!/bin/bash
outfile=loesungen_mat.tex
outfilepy=loesungen_py.tex
rm $outfile $outfilepy
#a2ps -r -A -3 -M A4 einheit0*/uebung/*.m -o $outfile
cp ./loesungen_temp.tex $outfile
cp ./loesungen_temp.tex $outfilepy

for einh in einheit0*; do
    echo "****" $einh
	nr=$(echo $einh | sed 's/[a-z]//g')
	rm $einh/uebung/loesungen$nr.zip
	zip -9r $einh/uebung/loesungen$nr.zip $einh/uebung/e* -x \*.tex
	echo "\section{$einh}" >> $outfile
	echo "\section{$einh}" >> $outfilepy
	echo "\setcounter{zaehler}{0}" >> $outfile
	echo "\setcounter{zaehler}{0}" >> $outfilepy
	for aufg in $einh/uebung/e*; do
		texfile=$(ls $aufg/*.tex)
        echo $texfile $aufg
		echo "\input{$texfile}" >> $outfile
		echo "\input{$texfile}" >> $outfilepy
		for file in $(find $aufg/ -name "*.m" -or -name "*.c"); do
			echo "" >> $outfile
			echo "\textbf{$file}" | sed  's/_/\\_/g' >> $outfile
			echo "\matinput{$file}"  >> $outfile
		done
		for file in $(find $aufg/ -name "*.py" ); do
			echo "" >> $outfilepy
			echo "\textbf{$file}" | sed  's/_/\\_/g' >> $outfilepy
			echo "\pyinput{$file}"  >> $outfilepy
		done
	done
done
echo "\end{document}" >> $outfile
echo "\end{document}" >> $outfilepy
xelatex $outfile
xelatex $outfilepy
