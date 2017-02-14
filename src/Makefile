CFLAGS = -I -Wall
CC = gcc

all:
	$(CC) -c sha256.c $(CFLAGS)
	$(CC) -c rsa.c $(CFLAGS)
	$(CC) -c bigint.c $(CFLAGS)
	$(CC) -c crypto_misc.c $(CFLAGS)

clean:
	rm -f *.o

