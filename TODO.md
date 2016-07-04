# Writing

## Structure

* Title Page
* Dedication
* Bio sketch
    * Bio. Degrees, honors
    * UR: dates, program, advisors, appointments (fellowship)
    * (no future employment)
    * Reference list of all works published or under review
* Acknowledgements
* Abstract (350 words or less)
* Contributors and funding sources
    * Committee.
    * Diss work collaborators and my independent contributions
    * Financial support
* Table of contents
* List of tables
* List of figures
* List of symbols
* Chapters
* Conclusion
* Bibliography/References
* Appendices

## Chapters

1. Introduction
    * [done] outline
    * bullets
    * write
2. Ideal adapter
    * [done] write
    * format for diss
        * add chapter heading(s) and adjust other headings 
        * copy over figures etc.
        * (base this on ~/work/writing/adapt-psych-rev/inpress)
3. Selective adaptation
    * [done] write
    * format for diss
        * add chapter heading
        * adjust other headings
        * copy over figures etc.
4. Inferring priors
    * [done] draft
    * edit
    * format
        * standalone tex template
        * use --bibtex for references
5. Talker variation
    * [done] draft
    * edit
    * format
        * standalone tex template
        * use --bibtex for references
6. Conclusion
    * outline/bullets
    * write
    * format

## putting it together

* compile individual .Rmds to tex files
    * subfiles
* deal with relative image paths. e.g. http://tex.stackexchange.com/questions/172320/is-it-possible-to-use-includegraphics-with-relative-path-inside-subfiles
* merge into single .tex based on judith's template
    * factor out preamble from existing tex
    * use subfiles to inclue individual chapters etc.
* maybe best to create a mini package for rmarkdown output format to make compilation easier. actually this looks like a pain in the ass. or best can do is a thin wrapper on pdf_document. well problem is that that the output is not going to be compileable, and won't keep tex unless compilatoin succeeds.
    * subfile documentclass pandoc template

            \documentclass[kleinschmidt-diss.tex]{subfile}
            \begin{document}
            $body$
            \end{document}

    * pandoc options
        * `--bibtex` or `--biblatex` (later would require redoing citations for
          existing papers
