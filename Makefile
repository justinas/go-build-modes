# .dylib is for OS X. Use .so for Linux.
libmath.dylib: math.go
	go build -buildmode=c-shared -o libmath.dylib math.go

dynamic: libmath.dylib
	cc -L. -lmath -o math math.c

clean:
	rm -f *.dylib *.a math
