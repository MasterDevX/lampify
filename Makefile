CC    = gcc
LIB   = -lbluetooth -lnotify
INC   = -I /usr/include/glib-2.0 -I /usr/lib/glib-2.0/include -I /usr/include/gdk-pixbuf-2.0
BASE  = lampify
INST  = /usr/local/bin/
CFLAG = -Wall -Ofast

all:
	$(CC) $(CFLAG) $(INC) $(LIB) -o $(BASE) $(BASE).c

clean:
	rm -f $(BASE)

install:
	cp $(BASE) $(INST)$(BASE)
	chmod a+x $(INST)$(BASE)
	setcap 'cap_net_raw,cap_net_admin+eip' $(INST)$(BASE)

uninstall:
	rm -f $(INST)$(BASE)