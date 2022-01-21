all: pdf

pdf:
	xelatex --shell-escape projeto.tex
	bibtex
	xelatex --shell-escape projeto.tex
	xelatex --shell-escape projeto.tex

cc:
	xelatex --shell-escape cc.tex
clean:
	rm -fr *.idx
	rm -fr *.lof
	rm -fr *.log
	rm -fr *.lot
	rm -fr *.toc
	rm -fr *.aux
	rm -fr *.out
	
purge: clean
	rm -fr *.pdf
