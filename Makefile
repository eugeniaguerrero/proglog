# Makefile for Protobuf project

# Environment variables
PROTOC := protoc
PROTO_DIR := api/v1/*.proto
PROTOC_OPTS := --go_out=. --go_opt=paths=source_relative --proto_path=.

# Default target
all: build

# Clean generated files
clean:
	rm -rf ./generated

# Build protobuf code into Go code
build:
	$(PROTOC) $(PROTO_DIR) $(PROTOC_OPTS)

# Run the project
run:
	go run main.go

# Run tests
test:
	go test ./...

# Lint the code
lint:
	golint ./...

# Check code style
checkstyle:
	go vet ./...
