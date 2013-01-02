rem Batchdatei zur Erstellung meiner Diplomarbeit mit Glossar,
rem Inhaltsverzeichnis usw..
rem Alle Zwischendateien bleiben erhalten, so dass Zwischenlaeufe in
rem TeXnicCenter nicht mehr notwendig sind.

rem schrott löschen
del *.aux *.bbl *.blg *.glg *.glo *.gls *.idx *.ilg *.ind *.ist *.lof *.log *.lol *.lot *.out *.toc
del Diplomarbeit_Stefan-Sobek.pdf

rem LaTeX Vorlauf
latex Diplomarbeit_Stefan-Sobek.tex
latex Diplomarbeit_Stefan-Sobek.tex

rem Literaturverzeichnis erzeugen
bibtex Diplomarbeit_Stefan-Sobek

rem Stichwortverzeichnis erzeugen
makeindex Diplomarbeit_Stefan-Sobek

rem Glossar erzeugen
makeindex -s Diplomarbeit_Stefan-Sobek.ist -t Diplomarbeit_Stefan-Sobek.glg -o Diplomarbeit_Stefan-Sobek.gls Diplomarbeit_Stefan-Sobek.glo

rem DVI-Dokument erzeugen, Glossar einbinden und Literaturverzeichnis danach nochmal aktualisieren
latex Diplomarbeit_Stefan-Sobek.tex
latex Diplomarbeit_Stefan-Sobek.tex

rem PDF-Dokument erzeugen
pdflatex Diplomarbeit_Stefan-Sobek.tex