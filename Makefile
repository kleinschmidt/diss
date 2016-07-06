all: outline.html outline.docx kleinschmidt-thesis.pdf

%.html: %.md
	pandoc -t html -f markdown -N -o "$@" "$<"

%.docx: %.md
	pandoc -t docx -f markdown -N -o "$@" "$<"

%.pdf: %.tex
	latexmk -halt-on-error $<
