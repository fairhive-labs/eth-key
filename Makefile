run: clean build
	./bin/api
run-cli: clean build-cli
	./bin/ethkeygen $(COMMAND_ARGS)
build: clean
	go build -o bin/api -v api/main.go
build-cli: clean
	go build -o bin/ethkeygen -v ./cmd/main.go
clean:
	rm -rf ./bin
test:
	go clean -testcache
	go test -v ./... 
