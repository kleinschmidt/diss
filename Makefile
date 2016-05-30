all: outline.html outline.docx

%.html: %.md
	pandoc -t html -f markdown -N -o "$@" "$<"

%.docx: %.md
	pandoc -t docx -f markdown -N -o "$@" "$<"
