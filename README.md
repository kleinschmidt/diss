# What

This is the source for my dissertation at the University of Rochester
("Perception in a Variable but Structured World: The Case of Speech
Perception").  It's a bit of a Frankenstein's monster, cobbled together from
Latex files from previously published papers (Chapters 2 and 3) and Rmd files
for some new, as-of-yet unpublished work (Chapters 4 and 5).  The whole thing is
held together with pandoc and makefiles.

# Why

I hope there might be some use in seeing how I managed to cobble together a
single, automatically built document from heterogeneously formatted source
files.  The commit history may be informative so you can see the process of
converting a stand-alone Latex file to one that plays nicely with pandoc.

Also, in the spirit of openness, you might like to see how the figures and
results from the later chapters were generated.

# Dependencies

Unfortunately, you'll likely **not** be able to build it yourself, since the Rmd
files require some data that was shared privately by others and is not publicly
available.  Contact me if you want access to something and we'll see what we can
do.

A (possibly non-exhaustive) list of dependencies is:

* `pandoc`, `pdflatex`, and `make` for converting things to latex, combining
  them, and rendering the final PDF.
* [`nspvowels`](https://github.com/kleinschmidt/nspvowels): for Chapter 5, an R
  package with a small collection of vowel F1/F2 values from the Nationwide
  Speech Project, and code to analyze it (I'm planning to split the code and
  data out separately).
* [`votcorpora`](https://github.com/kleinschmidt/votcorpora): an R package with
  aggregated collection of VOT values for voiced and voiceless word-intial stops
  (donated by a number of other researchers).
* [`beliefupdatr`](https://github.com/kleinschmidt/beliefupdatr): an R package
  with helpers for coding phonetic adaptation.
* [`daver`](https://github.com/kleinschmidt/beliefupdatr): an R package with
  misc. functions I've found useful.
