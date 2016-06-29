all: talker_variation.html talker_variation.pdf

%.html: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format='html_document', output_file='$@', clean=FALSE)"

%.pdf: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format='pdf_document', output_file='$@', clean=FALSE)"
