PREFIX?=${HOME}/local

.PHONY: all
all: mkmf mkninja

mkmf: mkmf.sh
	cat mkmf.sh > mkmf
	chmod 0755 mkmf

mkninja: mkninja.sh
	cat mkninja.sh > mkninja
	chmod 0755 mkninja

.PHONY: install
install: all
	install -d -m 0755          ${PREFIX}/bin
	install    -m 0755 mkmf     ${PREFIX}/bin/mkmf
	install    -m 0755 mkninja  ${PREFIX}/bin/mkninja

.PHONY: clean
clean:
	rm -f mkmf
	rm -f mkninja
	rm -f *~
