package server

import (
	"net/http"

	"github.com/taher968/go-service/internal/handler"
)

func New(addr string) *http.Server {
	mux := http.NewServeMux()

	mux.HandleFunc("GET /health", handler.Health)
	mux.HandleFunc("GET /", handler.Root)

	return &http.Server{
		Addr:    addr,
		Handler: mux,
	}
}
