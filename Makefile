SECS := $(wildcard secs/*.tex)

all: TemplateTesto.pdf

TemplateTesto.pdf: main.tex $(SECS) mstyle.sty
	pdflatex main.tex
	pdflatex main.tex
	mkdir -p build
	mv *.toc build
	mv *.aux build
	mv *.log build
	mv *.out build
	mv main.pdf TemplateTesto.pdf
	rm -rf build
