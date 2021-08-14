.PHONY: run
run:
	go run cmd/urlShortener/main.go

.PHONY: build
build:
	go build cmd/urlShortener/main.go




.PHONY: install-lint
install-lint:
  	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.39.0

.PHONY: lint
lint: install-lint
	golangci-lint run ./...


.PHONY: test
test:
	go test -race ./...