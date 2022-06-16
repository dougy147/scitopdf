.POSIX:

OS = $(shell uname -s)
ifndef PREFIX
  PREFIX = /usr/local
endif
ifndef MANPREFIX
  MANPREFIX = $(PREFIX)/man
endif

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	for script in bin/*; do \
		cp -f $$script $(DESTDIR)$(PREFIX)/bin/; \
		chmod 755 $(DESTDIR)$(PREFIX)/$$script; \
	done
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f scitopdf.1 $(DESTDIR)$(MANPREFIX)/man1/scitopdf.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/scitopdf.1

uninstall:
	for script in bin/*; do \
		rm -f $(DESTDIR)$(PREFIX)/$$script; \
	done
	rm -rf $(DESTDIR)$(PREFIX)/share/scitopdf
	rm -f $(DESTDIR)$(MANPREFIX)/man1/scitopdf.1

.PHONY: install uninstall
