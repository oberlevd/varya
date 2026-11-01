CC      = gcc
CCFLAGS = -O2 -Wall
OBJS    = main.o print.o
TARGET  = prog

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CCFLAGS) -o $(TARGET) $(OBJS)

main.o: main.c
	$(CC) $(CCFLAGS) -c main.c

print.o: print.c
	$(CC) $(CCFLAGS) -c print.c

install: $(TARGET)
	cp $(TARGET) /tmp/$(TARGET)

clean:
	rm -f *.o $(TARGET)

.PHONY: all install clean