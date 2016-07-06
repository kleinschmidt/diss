.PHONY: all chapters
all: outline.html outline.docx kleinschmidt-thesis.pdf

chapters:
	$(MAKE) -C chapters

%.html: %.md
	pandoc -t html -f markdown -N -o "$@" "$<"

%.docx: %.md
	pandoc -t docx -f markdown -N -o "$@" "$<"

kleinschmidt-thesis.pdf: kleinschmidt-thesis.tex chapters
	latexmk -halt-on-error $<
