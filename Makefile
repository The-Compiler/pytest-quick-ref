all: cheatsheet.pdf

.PHONY: clean
clean:
	latexmk -C

LATEXMK = latexmk -lualatex -shell-escape -latexoption=--cnf-line=max_print_line=999

cheatsheet.pdf: *.tex
	$(LATEXMK) cheatsheet.tex

.PHONY: upload
upload: cheatsheet.pdf
	rsync -avPh cheatsheet.pdf uber-bruhinsw:/var/www/virtual/bruhinsw/pyte.st/ref.pdf
