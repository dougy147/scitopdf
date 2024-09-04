.POSIX:

OS = $(shell uname -s)
ifndef PREFIX
  PREFIX = /usr
endif
ifndef MANPREFIX
  MANPREFIX = $(PREFIX)/man
endif

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f scitopdf $(DESTDIR)$(PREFIX)/bin/
	chmod 755 $(DESTDIR)$(PREFIX)/bin/scitopdf
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f scitopdf.1 $(DESTDIR)$(MANPREFIX)/man1/scitopdf.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/scitopdf.1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/scitopdf
	rm -rf $(DESTDIR)$(PREFIX)/share/scitopdf
	rm -f $(DESTDIR)$(MANPREFIX)/man1/scitopdf.1

.PHONY: install uninstall
