.PHONY: all chapter
all: talker_variation.html talker_variation.pdf
chapter: talker_variation.pdf talker_variation.chap.tex

%.html: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format='html_document', output_file='$@', clean=FALSE)"

%.pdf: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format='pdf_document', output_file='$@', clean=FALSE)"

%.utf8.md: %.Rmd
	$(MAKE) $*.pdf

%.chap.tex: %.utf8.md ../template.chap.tex
	pandoc --template=../template.chap.tex -V master=../../kleinschmidt-thesis.tex --biblatex --chapters -F pandoc-fignos -F pandoc-tablenos -F pandoc-crossref -f markdown -t latex < $< | ../../scap.pl > $@
