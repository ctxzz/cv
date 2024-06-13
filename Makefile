.PHONY: help
help:
	@cat Makefile

cv.pdf:
	cd src && latexmk -quiet

.PHONY: clean
clean:
	cd src && latexmk -c

.PHONY: watch
watch:
	find src -path '*.tex' -or -path '*.cls' | entr make cv.pdf
