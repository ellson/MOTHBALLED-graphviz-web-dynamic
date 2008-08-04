PAGESET=About.php \
	Download.php \
	Download_source.php \
	Download_linux_fedora.php \
	Download_linux_rhel.php \
	Download_att_linux.php \
	Download_windows.php \
	Download_macos.php \
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

all: ${PAGESET} index.php

${PAGESET}: ht2php.py Makefile

index.php: About.php
	rm -f index.php
	ln -s About.php index.php

.PHONY: Download_source.ht Download_linux_fedora.ht Download_linux_rhel.ht Download_att_linux.ht Download_windows.ht Download_macos.ht

Download.php: Agree.ht Download.ht

Download_source.ht:
	./Download_source/source_current.tcl

Download_linux_fedora.ht:
	./Download_linux_fedora/linux_fedora_current.tcl

Download_linux_rhel.ht:
	./Download_linux_rhel/linux_rhel_current.tcl

Download_att_linux.ht:
	./Download_att_linux/att_linux_current.tcl

Download_windows.ht:
	./Download_windows/windows_current.tcl

Download_macos.ht:
	./Download_macos/macos_current.tcl

clean:
	rm -f ${PAGESET} index.php Download_*.ht
