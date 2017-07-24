INSTALLDIR = $(DESTDIR)
ARCH ?= $(shell uname -m|sed 's/i.86/i386/'|sed 's/^arm.*/arm/')
INSTALLPATH = '/usr/local/bin'
BINNAME = 'docker-compose'
PROJECTSPATH = '/etc/cloudy/docker-compose/projects'
MKDIR_P = mkdir -p

ifeq ($(ARCH),amd64)
	ARCH = x86_64
endif

all:
	@echo "all"
clean:
	@echo "clean"
install:
	@echo "Creating installation directory..."
	mkdir -p $(INSTALLDIR)/$(INSTALLPATH)
	@echo "Creating directory for docker-compose projects..."
	${MKDIR_P} ${PROJECTSPATH}
	@echo "Installing files..."
	install -m 0755 bin/$(ARCH)/$(BINNAME) $(INSTALLDIR)/$(INSTALLPATH)

.PHONY: all clean install
