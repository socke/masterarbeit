#!/bin/sh
echo "delete schrott";
./deleteSchrott.sh
echo "pre-compile";
latex Arbeit.tex
latex Arbeit.tex
echo "make bibliography";
bibtex Arbeit
echo "make glossary";
makeindex Arbeit
makeindex -s Arbeit.ist -t Arbeit.glg -o Arbeit.gls Arbeit.glo
makeindex -s Arbeit.ist -t Arbeit.alg -o Arbeit.acr Arbeit.acn
makeindex -s Arbeit.ist -t Arbeit.slg -o Arbeit.syi Arbeit.syg
echo "DVI-Dokument erzeugen, Glossar einbinden und Literaturverzeichnis danach nochmal aktualisieren"
latex Arbeit.tex
latex Arbeit.tex
echo "create finally";
pdflatex Arbeit.tex
