all: infer-priors.html infer-priors.pdf

%.html: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format='html_document', output_file='$@', clean=FALSE)"

%.pdf: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format='pdf_document', output_file='$@', clean=FALSE)"

%.utf8.md: $.Rmd
	Rscript -e "rmarkdown::render('$<', output_format='pdf_document', output_file='$@', clean=FALSE)"

%.chap.tex: %.utf8.md
	pandoc --template=../template.chap.tex -V master=../../kleinschmidt-thesis.tex --biblatex --chapters -F pandoc-fignos -F pandoc-tablenos -F pandoc-crossref -f markdown -t latex -o $@ < $< 
