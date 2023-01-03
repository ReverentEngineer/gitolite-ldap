prefix = /usr

all:

install:
	install -D bin/gitolite3-ldap \
		$(DESTDIR)$(prefix)/bin/gitolite3-ldap
	install -D etc/ssh/sshd_config.d/gitolite3-ldap.conf \
		$(DESTDIR)/etc/sshd/sshd_config.d/gitolite3-ldap.conf

uninstall:
	-rm -f $(DESTDIR)$(prefix)/bin/gitolite3-ldap

.PHONY: install uninstall all
