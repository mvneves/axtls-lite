CFLAGS = -I../src -Wall
CC = gcc

all:
	$(CC) -c test_sha256.c $(CFLAGS)
	$(CC) -o test_sha256 test_sha256.o ../src/sha256.o
	./test_sha256  
	$(CC) -c test_rsa.c $(CFLAGS)
	$(CC) -o test_rsa test_rsa.o ../src/rsa.o ../src/bigint.o ../src/crypto_misc.o
	./test_rsa

clean:
	rm -f test_rsa test_sha256 *.o

