package main

import (
	"io"
	"log"
	"net/http"
)

func main() {
	// Simple web server

	handler := func(w http.ResponseWriter, req *http.Request) {
		io.WriteString(w, "Golang Multi Architechture Docker Image!\n")
	}

	http.HandleFunc("/", handler)
	log.Println("Listing for requests at http://localhost:8000/")
	log.Fatal(http.ListenAndServe(":8000", nil))
}
