base=Space_Weather_Alerts_for_Air_Navigation_Pinilla_Asorey_Nunez
version=
name=${base}${version}
all:
	pdflatex ${name}.tex

full:
	make clean
	pdflatex ${name}.tex
	bibtex ${name}
	pdflatex ${name}.tex
	pdflatex ${name}.tex
	pdflatex ${name}.tex

clean:
	rm -f ${name}.aux ${name}.log ${name}.bbl ${name}.blg ${name}.spl ${name}.out

fullclean:
	rm -f *.aux *.log *.gz *.bak *.bbl *.blg *.out
