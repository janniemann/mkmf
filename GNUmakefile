PREFIX?=${HOME}/local

.PHONY: all
all: mkmf

mkmf: mkmf.sh
	cat mkmf.sh > mkmf
	chmod 0755 mkmf

.PHONY: install
install:
	install -d -m 0755       ${PREFIX}/bin
	install    -m 0755 mkmf  ${PREFIX}/bin/mkmf

.PHONY: clean
clean:
	rm -f mkmf
	rm -f *~
