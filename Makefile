PERL=/usr/bin/perl -wc

# Ubicacion de las paginas de Tickets
HTMLDIR=/usr/local/apache-root/enlaces
SCRIPTDIR=/usr/local/apache-root/enlaces
TMPLDIR=/usr/local/apache-root/enlaces-tmpl

# perl -e 'print "@INC \n";'
PMDIR=/etc/perl
WWWUSER=root
WWWGROUP=root
#WWWUSER=apache
#WWWGROUP=apache

all: 
	/usr/bin/clear
	@echo
	$(PERL) enlaces.pm
	@echo
	$(PERL) interferencia.html
	@echo

install:
	install -m 600 -o $(WWWUSER) -g $(WWWGROUP) tmpl/* $(TMPLDIR)/
	install -m 700 -D -o $(WWWUSER) -g $(WWWGROUP) enlaces.pm $(PMDIR)/enlaces.pm
	install -m 700 -D -o $(WWWUSER) -g $(WWWGROUP) interferencia.html $(SCRIPTDIR)/interferencia.html

