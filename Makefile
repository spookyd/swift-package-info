
SWIFTINFO_EXECUTABLE=.build/debug/swift-package-info

BINARIES_FOLDER=/usr/local/bin

.PHONY: all

all: build install

build: 
	swift build

install: build
	install -d "$(BINARIES_FOLDER)"
	install "$(SWIFTINFO_EXECUTABLE)" "$(BINARIES_FOLDER)"
