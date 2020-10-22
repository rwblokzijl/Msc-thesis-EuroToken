INPUT_FILES = thesis.md

TEX_FILE = thesis
PDF = thesis.pdf

FLAGS = \
	-s \
	-f markdown \
	--chapters \
	--bibliography=../bibliography.bib
	# --csl=deps/bibliography.csl \
	# -H deps/preamble.tex

FLAGS_PDF = --template=report.tex

all: pdf

run:
	evince $(PDF) > /dev/null 2>&1 &

pdf:
	cd deps && pandoc -o $(TEX_FILE).tex $(FLAGS) $(FLAGS_PDF) ../$(INPUT_FILES)
	cd deps && xelatex $(TEX_FILE)
	cd deps && bibtex $(TEX_FILE)
	cd deps && xelatex $(TEX_FILE)
	cd deps && xelatex $(TEX_FILE)
	cd deps && mv thesis.* ../build
	cp build/thesis.pdf .

clean:
	rm build/*

