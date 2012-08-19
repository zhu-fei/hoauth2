
DIST=dist
CBD=cabal-dev

default: build

init:
	cabal update
	$(CBD) install
clean:
	rm -rf $(DIST)

conf:
	$(CBD) configure

build: conf
	$(CBD) build
	hlint src

rebuild: clean build

install: build
	$(CBD) install	

doc: build
	$(CBD) haddock
