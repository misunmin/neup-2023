name = fisc_merz 

pdf:
	latexmk -pdf $(name)

all:
	pdflatex  --shell-escape $(name).tex
	pdflatex  --shell-escape $(name).tex
	bibtex $(name)
	bibtex $(name)
	pdflatex  --shell-escape $(name).tex
	pdflatex  --shell-escape $(name).tex
	bibtex $(name)
	bibtex $(name)
	pdflatex  --shell-escape $(name).tex
	rm -f *.out *.bbl *.blg *.log *.aux *.spl
	rm -f *.fls *.fdb_latexmk

cln clean:
	rm -f *.out *.bbl *.blg *.log *.aux *.spl *.pdf
	rm -f *.fls *.fdb_latexmk
