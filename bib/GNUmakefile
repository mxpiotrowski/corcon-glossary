BIB=references.bib

references.json: ${BIB} ../*.md
	pandoc -t csljson -L getbib.lua \
	  --bibliography=${BIB} \
	  -o $@ ../*.md
