OUT_DIR := ./dist/
SOLANA_TOOLS = $(shell dirname $(shell which cargo-build-bpf))
include $(SOLANA_TOOLS)/sdk/bpf/c/bpf.mk

build:
	touch src/*/*
	make beachside
	cp dist/beachside.so ../beachside
