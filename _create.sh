#!/bin/sh
echo "delete schrott";
./_deleteSchrott.sh
echo "pre-compile";
latex 01_Masterarbeit_Stefan_Sobek.tex && latex 01_Masterarbeit_Stefan_Sobek.tex
echo "make bibliography"; 
bibtex 01_Masterarbeit_Stefan_Sobek
echo "make glossary"; 
makeindex 01_Masterarbeit_Stefan_Sobek
makeindex -s 01_Masterarbeit_Stefan_Sobek.ist -t 01_Masterarbeit_Stefan_Sobek.glg -o 01_Masterarbeit_Stefan_Sobek.gls 01_Masterarbeit_Stefan_Sobek.glo
makeindex -s 01_Masterarbeit_Stefan_Sobek.ist -t 01_Masterarbeit_Stefan_Sobek.alg -o 01_Masterarbeit_Stefan_Sobek.acr 01_Masterarbeit_Stefan_Sobek.acn
makeindex -s 01_Masterarbeit_Stefan_Sobek.ist -t 01_Masterarbeit_Stefan_Sobek.slg -o 01_Masterarbeit_Stefan_Sobek.syi 01_Masterarbeit_Stefan_Sobek.syg
echo "DVI-Dokument erzeugen, Glossar einbinden und Literaturverzeichnis danach nochmal aktualisieren"
latex 01_Masterarbeit_Stefan_Sobek.tex
latex 01_Masterarbeit_Stefan_Sobek.tex
echo "create finally";
pdflatex 01_Masterarbeit_Stefan_Sobek.tex
