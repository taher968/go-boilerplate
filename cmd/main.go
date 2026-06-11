package main

import (
	"log"
	"net/http"

	"github.com/taher968/go-service/internal/server"
)

func main() {
	srv := server.New(":8080")
	log.Println("starting server on :8080")
	if err := srv.ListenAndServe(); err != nil && err != http.ErrServerClosed {
		log.Fatalf("server error: %v", err)
	}
}
