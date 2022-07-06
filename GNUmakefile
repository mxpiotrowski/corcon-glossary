BIB=bib/references.json
CSL=bib/chicago-author-date

%.pdf: %.md ${BIB}
	pandoc -t pdf --citeproc \
	       --bibliography=${BIB} \
	       --pdf-engine=xelatex \
	       -M reference-section-title="References" \
	       -o $@ $<

${BIB}: bibliography ;

bibliography:
	cd ${dir ${BIB}} && ${MAKE}

.PHONY: subdir
