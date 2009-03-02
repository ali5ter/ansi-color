VERSION=latest

clean:
	rm -rf ansi-color-* ansi-color_*
	$(MAKE) -C ansi-color clean

package:
	$(MAKE) -C ansi-color VERSION=$(VERSION) O=`pwd` build
	rm -f ansi-color*.zip
	cp ansi-color-$(VERSION).tar.gz ansi-color_$(VERSION).orig.tar.gz
	tar xzvf ansi-color-$(VERSION).tar.gz
	mkdir -p ansi-color-$(VERSION)/debian/
	rsync -a `pwd`/debianize/ ansi-color-$(VERSION)/debian/
	cd ansi-color-$(VERSION) && debuild -j3 -tc -S && cd ..
	rm -rf ansi-color-$(VERSION)*
	
ppa: package
	dput ppa `ls -tl ansi-color-$(VERSION)*.changes | head -n 1 | tail -n 1 | awk '{print $8}'`
