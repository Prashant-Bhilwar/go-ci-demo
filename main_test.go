package main

import "testing"

func TestGreet(t *testing.T) {
	got := Greet("Prashant")
	want := "Hello, Prashant"

	if got != want {
		t.Errorf("Greet() = %q, want %q", got, want)
	}
}
