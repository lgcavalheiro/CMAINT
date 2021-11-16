.PHONY: all install configure uninstall

INSTALL_PREFIX=/usr/bin
CONFIG_PREFIX=/.config/cmaint

all: install

configure:
	mkdir -p $(HOME)$(CONFIG_PREFIX)
	cp gitignore.template crun.template cmakelists.template main.template $(HOME)$(CONFIG_PREFIX)

install: configure
	cp cmaint $(INSTALL_PREFIX)
	chmod 0755 $(INSTALL_PREFIX)/cmaint

uninstall:
	$(RM) -rf $(HOME)$(CONFIG_PREFIX)
	$(RM) $(INSTALL_PREFIX)/cmaint