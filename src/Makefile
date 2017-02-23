CC = $(CROSS_COMPILER)gcc
AR = $(CROSS_COMPILER)ar

libaxtls-lite.a:
	$(CC) -c sha256.c $(CFLAGS)
	$(CC) -c rsa.c $(CFLAGS)
	$(CC) -c bigint.c $(CFLAGS)
	$(CC) -c crypto_misc.c $(CFLAGS)
	$(AR) rvs libaxtls-lite.a sha256.o rsa.o bigint.o crypto_misc.o

clean:
	rm -f *.o *.a

