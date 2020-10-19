FILES = paper.md

OUTPUT = Survey.tex
PDF = Survey.pdf

FLAGS = --bibliography=bibliography.bib \
	--csl=deps/bibliography.csl \
	-s \
	-f markdown \
	-H deps/preamble.tex

FLAGS_PDF = --template=deps/template.latex

all: pdf

run:
	evince $(PDF) > /dev/null 2>&1 &

pdf:
	pandoc -o $(OUTPUT) $(FLAGS) $(FLAGS_PDF) $(FILES)
	# sed -i 's/\\end{longtable}/\\tabularnewline\n\\end{supertabular}\n\\caption{TODO \\label{TODO}}\n\\end{center}\\end{table*}/' $(OUTPUT)
	# sed -i 's/\\begin{longtable}/\\begin{table*}[t]\\begin{center}\\begin{supertabular}/' $(OUTPUT)
	# sed -i 's/columnwidth/textwidth/' $(OUTPUT)
	# sed -i '/\\endhead/d' $(OUTPUT)
	# sed -i '/\\endfirsthead/d' $(OUTPUT)
	pdflatex $(OUTPUT)

clean:
	rm build/*

