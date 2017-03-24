INC = -I/usr/include/libdrm
CPPFLAGS = -Wall -msse -msse2 -msse3 -Wextra -march=native -pedantic -O2
LIBDIR = 
LIB = -lEGL -lGL -ldrm -lgbm
LDFLAGS = $(LIBDIR) $(LIB)

all: eglkms egltexkms eglbench

clean:
	rm eglkms egltexkms eglbench

eglkms: eglkms.c
	$(CC) $(CFLAGS) $(INC) $(LDFLAGS) -o $@ $<

egltexkms: egltexkms.c
	$(CC) $(CFLAGS) $(INC) $(LDFLAGS) -o $@ $<

eglbench: eglbench.c
	$(CC) $(CFLAGS) $(INC) $(LDFLAGS) -o $@ $<
