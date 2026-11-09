GOPATH := $(shell go env GOPATH)
export PATH := $(HOME)/.local/share/easyp-nightly/bin:$(GOPATH)/bin:$(PATH)


p-generate:
	easyp mod tidy && \
    easyp generate && \
    easyp lint --path proto

p-tidy:
	easyp mod tidy