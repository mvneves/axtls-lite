CC = gcc
LDFLAGS = -laxtls-lite -L../src/
CFLAGS := $(CFLAGS) -I../include

all:
	$(CC) -c test_sha256.c $(CFLAGS)
	$(CC) -o test_sha256 test_sha256.o $(LDFLAGS)
	./test_sha256  
	$(CC) -c test_rsa.c $(CFLAGS)
	$(CC) -o test_rsa test_rsa.o $(LDFLAGS)
	./test_rsa

clean:
	rm -f test_rsa test_sha256 *.o

