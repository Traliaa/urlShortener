.PHONY: run
run:
	go run cmd/urlShortener/main.go

.PHONY: lint
lint:
	golangci-lint run ./...


.PHONY: test
test:
	go test -race ./...