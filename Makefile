# .dylib is for OS X. Use .so for Linux.
libmath.dylib: math.go
	go build -buildmode=c-shared -o libmath.dylib math.go

libmath.a: math.go
	go build -buildmode=c-archive -o libmath.a math.go

dynamic: libmath.dylib
	cc math.c -L. -lmath -o math

static: libmath.a
	cc math.c libmath.a -lpthread -o math

python: libmath.dylib
	python3 mymath.py

clean:
	rm -f *.dylib *.a math
