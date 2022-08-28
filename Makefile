OUTPUT_DIR=out
HTML_TARGETS=${OUTPUT_DIR}/summary.html
PDF_TARGETS=${OUTPUT_DIR}/summary.pdf

TARGETS= ${HTML_TARGETS} ${PDF_TARGETS}

.PHONY: all
all: ${TARGETS}

.PHONY: html
html: ${HTML_TARGETS}

.PHONY: pdf
pdf: ${PDF_TARGETS}

${OUTPUT_DIR}/%.html: %.adoc
	mkdir -p ${OUTPUT_DIR}
	asciidoctor -r asciidoctor-diagram -D ${OUTPUT_DIR} $<

${OUTPUT_DIR}/%.pdf: %.adoc
	mkdir -p ${OUTPUT_DIR}
	asciidoctor-pdf -r asciidoctor-diagram -D ${OUTPUT_DIR} $<



clean:
	rm -rf ${OUTPUT_DIR}
