include config.mk

all:
%:
	make -C src $@
	make -C doc $@

install:
	[ -d $(PREFIX) ] || mkdir -p $(PREFIX)
	[ -d $(BINDIR) ] || mkdir -p $(BINDIR)
	[ -d $(CONFDIR) ] || mkdir -p $(CONFDIR)

	make -C src $@
	make -C doc $@

	cp -r dist/bin/* $(BINDIR)/
	[ -e $(CONFDIR)/delayed_pushd.conf ] || cp dist/conf/* $(CONFDIR)/

clean:
	make -C src $@
	make -C doc $@
	rm -rf dist/*/*

