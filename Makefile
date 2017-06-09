INSTALLDIR = $(DESTDIR)
ARCH ?= $(shell uname -m|sed 's/i.86/i386/'|sed 's/^arm.*/arm/')
INSTALLPATH = '/usr/local/bin'
BINNAME = 'docker-compose'

all:
	@echo "all"
clean:
	@echo "clean"
install:
	@echo "Make directory"
	mkdir -p $(INSTALLDIR)/$(INSTALLPATH)
	@echo "Install file"
	install -m 0755 bin/$(ARCH)/$(BINNAME) $(INSTALLDIR)/$(INSTALLPATH)

.PHONY: all clean install
