#!/usr/bin/env bash
set -e

run() {
  docker run --rm -p 8080:8080 my-service:latest
}

"$@"
