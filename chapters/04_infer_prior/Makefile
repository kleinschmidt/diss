.PHONY: all chapter
all: infer-priors.html infer-priors.pdf
chapter: infer-priors.pdf infer-priors.chap.tex

%.html: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format='html_document', output_file='$@', clean=FALSE)"

%.pdf: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format='pdf_document', output_file='$@', clean=FALSE)"

%.utf8.md: %.Rmd
	$(MAKE) $*.pdf

%.chap.tex: %.utf8.md ../template.chap.tex
	pandoc --template=../template.chap.tex -V master=../../kleinschmidt-thesis.tex --biblatex --chapters -F pandoc-fignos -F pandoc-tablenos -F pandoc-crossref -f markdown -t latex < $< | ../../scap.pl | ./insert_chap_foot.pl > $@
