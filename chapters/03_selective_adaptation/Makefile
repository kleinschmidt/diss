base = selective-adaptation
new = kleinschmidt-jaeger-selective-adaptation

images := $(shell grep '\includegraphics' ../$(base).tex | sed 's/.*{\(.*\)}/\1/')

.PHONY: all
all: $(new).pdf $(new).tex $(new).bib $(new)_figures.tar

../$(base).pdf: ../$(base).tex
	cd .. && latexmk $(base).tex

$(new).pdf: ../$(base).pdf
	cp $< $@

$(new).tex: ../$(base).tex
	cp $< $@

$(new).bib: ../$(base).aux ../library-clean.bib
	bibtool -x ../$(base).aux -i ../library-clean.bib -o $@

$(new)_figures.tar: $(addprefix ../,$(images))
	@echo $(images_src)
	tar -cf $@ -C .. $(images)


# kleinschmidt-jaeger-selective-adaptation-2015_diff.pdf: ../selective-adaptation.tex
# 	cd .. && git latexdiff v1.0.0 HEAD --latexmk --output resubmission_1/$@ --subtype=color

