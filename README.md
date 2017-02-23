# axtls-lite

axtls-lite is a lightweight version of the original axtls library targeting embedded devices.
This version implements SHA256 hashing and RSA sigurature verification.


## How to build

Type make to list the available targets:

	make
	Specify a target to build for:
	    make  linux
	    make  pic32mz


Build for linux:

	make linux && make test


Build for pic32mz/baremetal:

	make pic32mz

Library will be available at src/libaxtls-lite.a

