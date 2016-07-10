.PHONY: chapter

chapter: 02_ideal_adapter.chap.tex appendix_ideal_adapter.chap.tex

02_ideal_adapter.chap.tex: kleinschmidt_jaeger.tex
	../../scap.pl < $< > $@

appendix_ideal_adapter.chap.tex: ideal-adapter-appendix.tex
	../../scap.pl < $< > $@
