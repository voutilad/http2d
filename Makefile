PROG=		http2d
SRCS=		main.c
NOMAN=		yes

test: all
	${MAKE} -C ${.CURDIR}/tests regress

.include <bsd.prog.mk>

clean: clean-tests

clean-tests:
	${MAKE} -C ${.CURDIR}/tests clean
