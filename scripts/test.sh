#!/usr/bin/env bash
set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

test() {
  (cd "$ROOT_DIR" && go test ./...)
}

"$@"
