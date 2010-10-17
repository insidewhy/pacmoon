.PHONY: install dist

project = pacmoon-$(shell git tag | tail -n 1)

install:
	@install -m755 pacmoon ${DESTDIR}/usr/bin

dist:
	git archive --prefix=${project}/ -o ${project}.tar HEAD
	gzip ${project}.tar
