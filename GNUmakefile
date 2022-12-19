BIB=bib/references.json
CSL=bib/chicago-author-date

cosmoscope.html: config.yml ${BIB}
	cosma modelize --citeproc

%.pdf: %.md ${BIB} pandoc/*.yaml
	pandoc -s -t pdf \
	       --bibliography=${BIB} \
	       --defaults=pandoc/defaults_latex.yaml \
	       -M date="`date`" \
	       -o $@ $<

${BIB}: bibliography ;

bibliography:
	cd ${dir ${BIB}} && ${MAKE}

.PHONY: subdir
