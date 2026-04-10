PANDOC ?= pandoc
PDF_ENGINE ?= weasyprint

MD := newsletter.md
CSS := newsletter.css
TEMPLATE := newsletter.template.html

HTML_OUT := newsletter.html
PDF_OUT := DSRC_Newsletter.pdf

.PHONY: all pdf html clean

all: pdf

pdf: $(PDF_OUT)

$(PDF_OUT): $(MD) $(CSS) $(TEMPLATE)
	$(PANDOC) -s $(MD) --template $(TEMPLATE) -c $(CSS) -o $(PDF_OUT) --pdf-engine=$(PDF_ENGINE)

html: $(HTML_OUT)

$(HTML_OUT): $(MD) $(CSS) $(TEMPLATE)
	$(PANDOC) -s $(MD) --template $(TEMPLATE) -c $(CSS) -o $(HTML_OUT)

clean:
	rm -f $(HTML_OUT) $(PDF_OUT)
