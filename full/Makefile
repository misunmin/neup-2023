#
HEADER = proposal

all: clean $(HEADER).pdf 

TARGETS: $(HEADER).pdf
.PHONY: all clean distclean

tex_files = $(shell find narrative -name '[^.\#]*.tex' -print)
bib_files = $(shell find bibs -name '[^.\#]*.bib' -print)

$(HEADER).pdf: $(HEADER).tex $(tex_files) $(bib_files) $(pdf_files)
	@if test ! -z "`which rubber`" ; then \
		rubber -d $(HEADER) ; \
	else \
		pdflatex $(HEADER) | tee latex.out ; \
		if grep -q '^LaTeX Warning: Citation.*undefined' latex.out; then \
			bibtex $(HEADER); bibtex spub;\
			touch .rebuild; \
		elif grep -q 'Warning: There were undefined citations.' latex.out; then \
			bibtex $(HEADER); \
			touch .rebuild; \
		fi ; \
		while [ -f .rebuild -o \
			-n "`grep '^LaTeX Warning:.*Rerun' latex.out`" ]; do \
			rm -f .rebuild; \
			pdflatex $(HEADER) | tee latex.out; \
			bibtex $(HEADER); bibtex spub | tee latex.out; \
			pdflatex $(HEADER) | tee latex.out; \
			pdflatex $(HEADER) | tee latex.out; \
		done ; \
		rm latex.out ; \
	fi

clean:
	find . \( -name '*.blg' -print \) -or \( -name '*.aux' -print \) -or \
		\( -name '*.bbl' -print \) -or \( -name '*~' -print \) -or \
		\( -name '*.lof' -print \) -or \( -name '*.lot' -print \) -or \
		\( -name '*.toc' -print \) | xargs rm -f ; \
	rm -f $(HEADER).dvi $(HEADER).log $(HEADER).ps $(HEADER).pdf _region_* TAGS

distclean: clean
