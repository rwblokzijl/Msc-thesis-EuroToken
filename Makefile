INPUT_FILES = thesis.md

TEX_FILE = build/thesis.tex
PDF = thesis.pdf

FLAGS = \
	-s \
	-f markdown \
	--chapters
	# --bibliography=bibliography.bib \
	# --csl=deps/bibliography.csl \
	# -H deps/preamble.tex

FLAGS_PDF = --template=deps/report.tex

all: pdf

run:
	evince $(PDF) > /dev/null 2>&1 &

pdf:
	pandoc -o $(TEX_FILE) $(FLAGS) $(FLAGS_PDF) $(INPUT_FILES)
	# sed -i 's/\\end{longtable}/\\tabularnewline\n\\end{supertabular}\n\\caption{TODO \\label{TODO}}\n\\end{center}\\end{table*}/' $(TEX_FILE)
	# sed -i 's/\\begin{longtable}/\\begin{table*}[t]\\begin{center}\\begin{supertabular}/' $(TEX_FILE)
	# sed -i 's/columnwidth/textwidth/' $(TEX_FILE)
	# sed -i '/\\endhead/d' $(TEX_FILE)
	# sed -i '/\\endfirsthead/d' $(TEX_FILE)
	cd deps && xelatex ../$(TEX_FILE)
	cd deps && mv thesis.* ../build
	cp build/thesis.pdf .

clean:
	rm build/*

