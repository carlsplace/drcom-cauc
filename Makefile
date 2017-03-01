PREFIX=/usr
MANDIR=$(PREFIX)/share/man
BINDIR=$(PREFIX)/bin
OPTDIR=/opt

all:
	@echo "Run 'make install' for installation."
	@echo "Run 'make uninstall' for uninstallation."

install:
	install -Dm755 drcom $(DESTDIR)$(BINDIR)/drcom
	[ ! -d /lib/systemd/system ] || install -Dm644 drcom.service $(DESTDIR)$(PREFIX)/lib/systemd/system/drcom.service
	install -Dm644 cauc.py $(DESTDIR)$(OPTDIR)/drcom/cauc.py
	install -Dm644 LICENSE $(DESTDIR)$(OPTDIR)/drcom/LICENSE
	install -Dm644 drcom.conf $(DESTDIR)/etc/drcom.conf

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/drcom
	[ ! -f /lib/systemd/system/drcom.service ] || rm -f $(DESTDIR)$(PREFIX)/lib/systemd/system/drcom.service
	rm -f $(OPTDIR)/drcom/cauc.py
	rm -f $(OPTDIR)/drcom/LICENSE
	rm -f $(DESTDIR)/etc/drcom.conf
