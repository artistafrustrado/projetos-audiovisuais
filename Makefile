all: pdf

cc:
	xelatex --shell-escape projeto.tex

pdf:
	xelatex --shell-escape projeto.tex
