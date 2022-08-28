OUTPUT_DIR=out

html: ${OUTPUT_DIR}
	asciidoctor -r asciidoctor-diagram summary.adoc -D ${OUTPUT_DIR}

${OUTPUT_DIR}:
	mkdir -p ${OUTPUT_DIR}

clean:
	rm -rf ${OUTPUT_DIR}
