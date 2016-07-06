.PHONY: all clean
all: 01_introduction.chap.tex
	make -C 04_infer_prior chapter
	make -C 05_talker_variation chapter
clean:
	rm 01_introduction.chap.tex

%.chap.tex: %.md template.chap.tex
	pandoc --biblatex --template=template.chap.tex -V master=../kleinschmidt-thesis.tex --chapters -F pandoc-crossref -f markdown -t latex -o $@ < $< 
