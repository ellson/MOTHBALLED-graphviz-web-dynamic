PAGESET=About.html \
	Download.html \
	Download_source.html \
	Download_linux.html \
	Download_windows.html \
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

.PHONY: Download_source.ht Download_linux.ht Download_windows.ht

Download_source.ht:
	./Download_source/source_current.tcl

Download_linux.ht:
	./Download_linux/linux_current.tcl

Download_windows.ht:
	./Download_windows/windows_current.tcl

clean:
	rm -f ${PAGESET} index.html Download_*.ht
