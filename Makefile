#############################################################################
# File name:	Makefile
# Author:		chadd williams	
# Date:			08/12/2019
# Class:		CS 300
# Assignment:	Example C Code
# Purpose:		Demonstrate a Makefile		    
#############################################################################


CC=gcc
CFLAGS=-g -Wall

# -g  include debug symbols in the executable so that the code can be
# 		run through the debugger effectively
#
# -Wall	show all warnings from gcc


.PHONY: clean all

TARGETS=bin/ReadingQuiz

all: bin ${TARGETS}

bin:
	mkdir -p bin
	
bin/ReadingQuiz: bin/ReadingQuiz.o
	gcc -g -o bin/ReadingQuiz bin/ReadingQuiz.o
	
bin/ReadingQuiz.o: src/ReadingQuiz.c
	gcc -g -c -o bin/ReadingQuiz.o src/ReadingQuiz.c
	
clean:
	rm -rf ${TARGETS} bin/*.o
	