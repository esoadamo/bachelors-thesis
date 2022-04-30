all: pdf open

pdf:
	pdflatex --shell-escape -synctex=1 -interaction=nonstopmode thesis
	biber thesis
	pdflatex --shell-escape -synctex=1 -interaction=nonstopmode thesis
open:
	xdg-open thesis.pdf

