package main

import "syscall"

func main() {
	syscall.Write(1, []byte("Full Cycle Rocks!!\n"))
}