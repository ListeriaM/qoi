CC = gcc
CFLAGS = -O3

all: qoibench qoiconv

bench: qoibench
qoibench: LDLIBS += -lpng
qoibench.o: CFLAGS += -std=gnu99
qoibench.o: qoi.h

conv: qoiconv
qoiconv.o: CFLAGS += -std=c99
qoiconv.o: qoi.h

clean:
	$(RM) qoibench qoiconv qoibench.o qoiconv.o
.PHONY: all bench conv clean
