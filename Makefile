PAGESET=About.html \
	Download.html \
	News.html \
	Gallery.html \
	Documentation.html \
	Theory.html \
	Bugs.html \
	MailingList.html \
	License.html \
	Resources.html \
	Credits.html

.SUFFIXES: .ht .html

.ht.html:
	./ht2html.py "${PAGESET}" $<

all: ${PAGESET} index.html

${PAGESET}: ht2html.py Makefile

index.html: About.html
	rm -f index.html
	ln -s About.html index.html

.PHONY: Download.ht

Download.ht:
	./Download/current.tcl

clean:
	rm -f ${PAGESET} index.html Download.ht
