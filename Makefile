# The commands that are not standard.  You also need gzip, rm and cat.
CC = gcc
SQUEAK = C:/squeak/Squeak
GREG = ../greg/greg

CFLAGS = -Wall -O3

# The repository does not have msqueak-orig.image.
# Download http://tinlizzie.org/~ohshima/SqueakBootstrapper.zip and evaluate:
# "MicroSqueakImageBuilder new buildImageNamed: 'msqueak-orig.image'"
ORIGIMAGE = msqueak-orig.image
NEWIMAGE = msqueak.image

all : test

sq : sq.greg
	$(GREG) -o sqgreg.c sq.greg
	$(CC) $(CFLAGS) -o sq sqgreg.c 

test: compiler.sto $(NEWIMAGE)
	$(SQUEAK) $(NEWIMAGE) compiler.sto true
	$(SQUEAK) $(NEWIMAGE) AllMCompilerMethods.st true
	$(SQUEAK) $(NEWIMAGE) AllMCompilerMethods.st true

# It actually depends on mkimage $(ORIGIMAGE).gz
image.c: 
	./mkimage $(ORIGIMAGE).gz $@

$(ORIGIMAGE).gz: $(ORIGIMAGE)
	gzip -c $< > $@

$(NEWIMAGE): $(NEWIMAGE).gz
	gzip -dc $< > $@
	rm $(NEWIMAGE).gz

$(NEWIMAGE).gz: image
	./image $(NEWIMAGE).gz

compiler.sto: sq AllMCompilerClasses.st AllMCompilerMethods.st MCompilerInitialize.st
	cat AllMCompilerClasses.st AllMCompilerMethods.st MCompilerInitialize.st > test.st
	./sq test.st compiler.sto
	rm -f test.st

clean : 
	rm -f *~ *.o *.exe sqgreg.c *.image *.image.gz sq mkimage image *.sto log.txt
