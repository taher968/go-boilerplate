BINARY := bin/go-service

.PHONY: build run test clean

build:
	go build -o $(BINARY) ./cmd

run:
	go run ./cmd

test:
	go test ./...

clean:
	rm -rf bin
