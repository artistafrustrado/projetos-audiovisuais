all: pdf

cc:
	xelatex --shell-escape projeto.tex
	bibtex
	xelatex --shell-escape projeto.tex
	xelatex --shell-escape projeto.tex

pdf:
	xelatex --shell-escape projeto.tex
clean:
	rm -fr *.idx
	rm -fr *.lof
	rm -fr *.log
	rm -fr *.lot
	rm -fr *.toc
	
purge: clean
	rm -fr *.pdf
