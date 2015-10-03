from cffi import FFI

ffi = FFI()

ffi.cdef("long long add(long long x, long long y);")

lib = ffi.dlopen("./libmath.dylib")

print("10 + 5 =", lib.add(10, 5))
