CC=gcc
CFLAGS=-lWarn -pedantic

Temperature:	Temperature.o libmyifttt.a
	cc Temperature.o -L. -lmyifttt -lcurl -o Temperature

libmyifttt.a:	ifttt.o
	ar -rcs libmyifttt.a ifttt.o

ifttt.o:	ifttt.c ifttt.h
	$(CC) $(CFLAGS) -c -ansi $<

Temperature.o:	Temperature.c ifttt.h
	$(CC) $(CFLAGS) -c -ansi $<

all:	temp

