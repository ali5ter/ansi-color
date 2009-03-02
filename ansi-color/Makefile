VERSION=latest
PACKAGE_NAME=ansi-color-$(VERSION)
FILES=color README LICENSE Makefile
O=build

blank:
	true

install:
	cp -pv color $(DESTDIR)/usr/bin
	cp -pv color.1 $(DESTDIR)/usr/share/man/man1

uninstall:
	rm $(DESTDIR)/usr/bin/color
	rm $(DESTDIR)/usr/share/man/man1/color.1

clean:
	if [ -d build ]; then rm -rf build; fi

builddir: pfiles
	if [ ! -d build ]; then mkdir build; fi

pfiles:
	mkdir -p build/$(PACKAGE_NAME);
	cp $(FILES) build/$(PACKAGE_NAME);

build/$(PACKAGE_NAME).tar.gz: builddir
	tar -czvf $(O)/$(PACKAGE_NAME).tar.gz -C build $(PACKAGE_NAME);

build/$(PACKAGE_NAME).zip: builddir
	(cd build && zip $(O)/$(PACKAGE_NAME).zip $(PACKAGE_NAME) && cd ..);

build: build/$(PACKAGE_NAME).tar.gz build/$(PACKAGE_NAME).zip
