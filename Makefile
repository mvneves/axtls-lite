
# Default target will list all the available targets
TARGETS=$(shell ls *.mk | cut -d'.' -f1 | xargs echo)
all:
	@echo "Specify a target to build for:"
	@for B in ${TARGETS}; do \
		echo "    make " $$B; \
	done

ifeq ($(MAKECMDGOALS),pic32mz)
include pic32mz.mk
endif
ifeq ($(MAKECMDGOALS),linux)
include linux.mk
endif
ifeq ($(MAKECMDGOALS),test)
include linux.mk
endif

lib:
	make -C src CROSS_COMPILER=$(CROSS_COMPILER) CFLAGS="$(CFLAGS)"

linux: lib

pic32mz: lib

test: clean linux
	make -C tests

clean:
	make clean -C src
	make clean -C tests

