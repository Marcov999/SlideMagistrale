SECS := $(wildcard secs/*.tex)

all: SlideMagistrale.pdf

SlideMagistrale.pdf: main.tex $(SECS) mstyle.sty
	pdflatex main.tex
	mkdir -p build
	mv *.toc build
	mv *.aux build
	mv *.log build
	mv *.out build
	mv *.nav build
	mv *.snm build
	mv main.pdf SlideMagistrale.pdf
	rm -rf build
