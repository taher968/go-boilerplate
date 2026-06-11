#!/usr/bin/env bash
set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

build() {
  docker build -t my-service:latest -f "$ROOT_DIR/images/service.Dockerfile" "$ROOT_DIR"
}

"$@"
