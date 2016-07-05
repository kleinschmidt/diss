.PHONY: all clean
all: 01_introduction.tex
clean:
	rm 01_introduction.tex

%.tex: %.md
	pandoc --biblatex --chapters -F pandoc-crossref -f markdown -t latex -o $@ < $< 
