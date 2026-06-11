FROM golang:1.26-alpine AS builder

WORKDIR /app

COPY . .
RUN go mod download

# Build
RUN CGO_ENABLED=0 GOOS=linux go build -o service ./cmd

FROM alpine:latest

# Add user
RUN adduser -D -g '' app
USER app:app

COPY --from=builder /app/service /service

EXPOSE 8080
ENTRYPOINT [ "/service" ]



