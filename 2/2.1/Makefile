CC      = gcc
CCFLAGS = -O2 -Wall
TARGET  = prog

all: $(TARGET)

$(TARGET): hello.o
	$(CC) $(CCFLAGS) -o $(TARGET) hello.o

hello.o: hello.c
	$(CC) $(CCFLAGS) -c hello.c

install: $(TARGET)
	cp $(TARGET) /tmp/$(TARGET)

clean:
	rm -f *.o $(TARGET)

.PHONY: all install clean
