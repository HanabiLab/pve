PREFIX ?= /usr/local

install: bin/pve
		mkdir -p $(PREFIX)/$(dir $<)
		cp $< $(PREFIX)/$<

uninstall: 
		rm -f $(PREFIX)/bin/pve

.PHONY: install uninstall
