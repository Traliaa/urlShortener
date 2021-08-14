package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	fmt.Println("start")
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello World!")
	})
	err := http.ListenAndServe(":80", nil)
	if err!= nil{
		log.Fatal(err)
	}
}
