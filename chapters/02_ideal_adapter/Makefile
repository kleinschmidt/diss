images := $(shell grep '\includegraphics' ../draft_final.tex | sed 's/.*{\(.*\)}/\1/')

.PHONY: all
all: kleinschmidt_jaeger_figures.tar kleinschmidt_jaeger.tex kleinschmidt_jaeger.pdf kleinschmidt_jaeger_refs.bib kleinschmidt_jaeger_final_diff.pdf

kleinschmidt_jaeger_final_diff.pdf: ../draft_submitted_final_diff.pdf
	cp $^ $@

kleinschmidt_jaeger_figures.tar: $(addprefix ../,$(images))
	@echo $(images_src)
	tar -cf $@ -C .. $(images)

kleinschmidt_jaeger.tex: ../draft_final.tex
	cp $^ $@

kleinschmidt_jaeger.pdf: ../draft_final.pdf
	cp $^ $@

kleinschmidt_jaeger_refs.bib: ../draft_final.aux ../library-clean.bib
	bibtool -x ../draft_final.aux -i ../library-clean.bib -o $@

kleinschmidt_jaeger_accepted_final_diff.pdf: ../draft_submitted_final_diff.pdf
	cp $^ $@
