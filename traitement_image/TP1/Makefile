CFLAGS=-c -g -std=gnu99
LDFLAGS=-lm

essai1: essai1.o pgm.o
	gcc $(LDFLAGS)  $^  -o $@

essai2: essai2.o pgm.o fft.o
	gcc $(LDFLAGS)  $^  -o $@

filtrage_gaussien: filtrage_gaussien.o pgm.o fft.o
	gcc $(LDFLAGS)  $^  -o $@

%.o:%.c
	gcc $(CFLAGS) $<
