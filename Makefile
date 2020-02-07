
PWD = $(shell pwd)
PYG := /usr/local/lib/python2.7/site-packages/pygments

all: git-commit pdf-build pdf-open

pyg-install:
	ln -s ${PWD}/print.py ${PYG}/styles/

pyg-clear:
	rm -rf _minted-main

git-commit:
	git rev-parse --short HEAD > .commit

pdf-build:
	pdflatex -shell-escape -halt-on-error main.tex

pdf-open:
	open main.pdf
