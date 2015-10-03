package main

import "C"

//export add
func add(x int64, y int64) int64 {
	return x + y
}

// Dummy
func main() {}
