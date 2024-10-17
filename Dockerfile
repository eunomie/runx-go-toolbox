FROM golang:1.23.2-alpine3.20

RUN apk add --no-cache curl git ca-certificates openssh-client zip make build-base
RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin

RUN go install mvdan.cc/gofumpt@latest && \
    go install golang.org/x/tools/cmd/goimports@latest

COPY tools /tools
