all: insc.pdf

insc.pdf: insc.tex
	pdflatex insc.tex
	bibtex insc
	pdflatex insc.tex; pdflatex insc.tex 
	evince insc.pdf
clean:
	rm insc.pdf *.log *.aux *.bbl *.blg *~ *.cache *.lof *.lot *.toc


