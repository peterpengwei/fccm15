PAPER = FCCM15
TEX = $(wildcard *.tex)
BIB = reference.bib
FIGS = $(wildcard Figures/*.pdf Figures/*.png Figures/*.jpg graphs/*.pdf graphs/*.png)

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS) IEEEtran.cls
	echo $(FIGS)
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf

