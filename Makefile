PAGESET=About.php \
	Download.php \
	Download_source.php \
	Download_linux_fedora.php \
	Download_linux_rhel.php \
	Download_linux_ubuntu.php \
	Download_macos.php \
	Download_windows.php \
	Download_att.php \
	News.php \
	Gallery.php \
	Documentation.php \
	Theory.php \
	Bugs.php \
	MailingList.php \
	License.php \
	Resources.php \
	Credits.php

.SUFFIXES: .ht .php

.ht.php:
	./ht2php.py "${PAGESET}" $<

all: ${PAGESET} index.php pdf doc

${PAGESET}: ht2php.py Makefile

index.php: About.php
	rm -f index.php
	ln -s About.php index.php

.PHONY: Download_source.ht Download_linux_fedora.ht Download_linux_rhel.ht Download_linux_ubuntu.ht Download_macos.ht Download_windows.ht Download_att.ht pdf doc

Download.php: Agree.ht Download.ht

Download_source.ht:
	./Download_source/source_current.tcl

Download_linux_fedora.ht:
	./Download_linux_fedora/linux_fedora_current.tcl

Download_linux_rhel.ht:
	./Download_linux_rhel/linux_rhel_current.tcl

Download_linux_ubuntu.ht:
	./Download_linux_ubuntu/linux_ubuntu_current.tcl

Download_macos.ht:
	./Download_macos/macos_current.tcl

Download_windows.ht:
	./Download_windows/windows_current.tcl

Download_att.ht:
	./Download_att/att_current.tcl

#  http://www.graphviz.org/pdf requires graphviz-doc to be installed 
pdf:
	cp -rf /usr/share/doc/graphviz-doc-*/pdf pdf
	
#  http://www.graphviz.org/doc requires graphviz-doc to be installed 
doc:
	cp -rf /usr/share/doc/graphviz-doc-*/html doc

clean:
	rm -f ${PAGESET} index.php Download_*.ht
