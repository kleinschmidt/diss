.PHONY: all chapters clean
all: outline.html outline.docx kleinschmidt-thesis.pdf

clean:
	latexmk -c

chapters:
	$(MAKE) -C chapters

%.html: %.md
	pandoc -t html -f markdown -N -o "$@" "$<"

%.docx: %.md
	pandoc -t docx -f markdown -N -o "$@" "$<"

kleinschmidt-thesis.pdf: kleinschmidt-thesis.tex chapters
	latexmk -halt-on-error $<
