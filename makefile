INSTALL = /usr/bin/install -c
UNINSTALL = rm -f
MKDIR = mkdir -p

OPT_DIR = /opt
PROGRAM_DIR = ${OPT_DIR}/baslatan/grubcfg

makedir:
	test -d "$(DESTDIR)${PROGRAM_DIR}/baslatan" || $(MKDIR) "$(DESTDIR)${PROGRAM_DIR}/baslatan"
	
install: makedir
	cp -r baslatan/* "$(DESTDIR)$(PROGRAM_DIR)/baslatan"
	$(INSTALL) -m 644 grub.cfg "$(DESTDIR)$(PROGRAM_DIR)/grub.cfg"
	$(INSTALL) -m 644 grubenv "$(DESTDIR)$(PROGRAM_DIR)/grubenv"

uninstall:
	-$(UNINSTALL) -r "$(DESTDIR)$(PROGRAM_DIR)"
