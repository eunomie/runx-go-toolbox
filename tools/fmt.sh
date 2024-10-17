#!/usr/bin/env sh

find . -type f -name "*.go" -exec /tools/remove_empty_imports.sh "{}" \;
goimports -w .
gofumpt -w .
