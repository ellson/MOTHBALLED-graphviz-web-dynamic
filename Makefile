PAGESET=About.html \
	Download.html \
	News.html \
	Screenshots.html \
	Documentation.html \
	Theory.html \
	Bugs.html \
	MailingList.html \
	License.html \
	Related.html \
	Credits.html

.SUFFIXES: .ht .html

.ht.html:
	./ht2html.py "${PAGESET}" $<

all: ${PAGESET} index.html

${PAGESET}: ht2html.py Makefile

index.html: Home.html
	ln -s Home.html index.html

.PHONY: Download.ht

Download.ht:
	./Download/current.tcl

clean:
	rm -f ${PAGESET} index.html Download.ht
