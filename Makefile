
# Default target will list all the available targets
TARGETS=$(shell ls *.mk | cut -d'.' -f1 | xargs echo)
all:
	@echo "Specify a target to build for:"
	@for B in ${TARGETS}; do \
		echo "    make " $$B; \
	done

linux:
	$(eval include linux.mk)
	make -C src

pic32mz:
	$(eval include pic32mz.mk)
	make -C src

test: clean linux
	make -C tests

clean:
	make clean -C src
	make clean -C tests

