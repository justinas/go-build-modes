package main

import "C"

//export add
func add(x int, y int) int {
	return x + y
}

// Dummy
func main() {}
