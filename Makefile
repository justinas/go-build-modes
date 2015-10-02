# .dylib is for OS X. Use .so for Linux.
libmath.dylib: math.go
	go build -buildmode=c-shared -o libmath.dylib math.go

libmath.a: math.go
	go build -buildmode=c-archive -o libmath.a math.go

dynamic: libmath.dylib
	cc -L. -lmath -o math math.c

static: libmath.a
	cc libmath.a math.c -o math

clean:
	rm -f *.dylib *.a math
