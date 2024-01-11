#!/usr/bin/make -f

name = kevan-hollbach-resume

default: $(name).pdf

view: $(name).pdf
	evince $(name).pdf &

$(name).pdf: $(name).tex shading.sty
	pdflatex $(name).tex

clean:
	rm -f *.aux *.log

cleaner: clean
	rm -f $(name).pdf
