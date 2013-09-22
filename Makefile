CC     = gcc
CFLAGS = -g -fverbose-asm

SRCS = mymain.c

all: mymain

mymain:	mymain.o mylib.o
	$(CC) -o mymain mymain.o mylib.o 

mymain.o: mymain.s
	$(CC) $(CFLAGS) -c mymain.s -o mymain.o

mylib.o: mylib.s
	$(CC) $(CFLAGS) -c mylib.s -o mylib.o


mymain.s: mymain.c
	$(CC) -S -fverbose-asm mymain.c -o mymain.s


mylib.s: mylib.c
	$(CC) -S -fverbose-asm mylib.c -o mylib.s


clean:
	rm -rf mymain mymain.o mymain.s
