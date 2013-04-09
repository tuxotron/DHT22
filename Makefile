CC = gcc
CFLAGS =  -std=c99 -I. -lbcm2835
DEPS = 
OBJ = dht22.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

dht22: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)
