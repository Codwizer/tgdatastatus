generate:
	go generate
	go generate ./...
.PHONY: generate

build:
	CGO_ENABLED=0 go build ./cmd/tgstatd

check_generated: generate
	git diff --exit-code
.PHONY: check_generated
