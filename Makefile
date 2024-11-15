CC = g++
VPATH = src inc
CPPFLAGS = -I inc

.PHONY: clean

all: compile
	strings main_3.11.3 | grep "json.hpp"
	strings main_2.1.1 | grep "json.hpp"

main_2.1.1: main_2.1.1.o
main_3.11.3: main_3.11.3.o

compile: main_3.11.3 main_2.1.1

clean:
	rm -f *.o
	rm -f main_3.11.3
	rm -f main_2.1.1
