all:
	:

install:
	:

test:
	@find . -type f ! -path '*.git*' ! -path '*OLD/*' \
		! -name Makefile ! -name . ! -name .. | \
	while read -r script ; do \
		read -r shebang <$$script ; \
		[ "$$shebang" = '#!/bin/sh' ] && \
		shellcheck -s sh $$script ; \
	done
