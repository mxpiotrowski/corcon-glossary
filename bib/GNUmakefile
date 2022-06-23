BIB=${HOME}/lib/tex/bibtex/bib/all.bib

references.json: ${BIB} ${BIB2} ../*.md
	pandoc -t csljson -L getbib.lua \
	  --bibliography=${BIB} \
	  -o $@ ../*.md
