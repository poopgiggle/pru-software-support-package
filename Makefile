#SRCFILE is the C source code
SRCFILE=
#CCSDIR is where CCS is installed
CCSDIR=
#BASEDIR is the directory where you've downloaded this repo to
BASEDIR=
CC=$(CCSDIR)/bin/clpru
HEXPRU=$(CCSDIR)/bin/hexpru
BINFILE=$(CCSDIR)/bin.cmd
CFLAGS=--c99 --silicon_version=3 -o1 --keep_asm 
INC=-I$(BASEDIR)/include/ -I$(CCSDIR)/include 
LFLAGS=--run_linker --library=$(CCSDIR)/lib/libc.a --library=AM335x_PRU.cmd
OFILE=elf.bin
OFLAG=--output_file=$(OFILE)

all: compile extract

compile:
	$(CC) $(CFLAGS) $(INC) $(SRCFILE) $(LFLAGS) $(OFLAG)

extract:
	$(HEXPRU) $(BINFILE) $(OFILE)

clean:
	rm *.bin *.obj *.asm
