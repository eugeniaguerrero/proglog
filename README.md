# distributed-log-package

## Running the server
Run the following snippet to start the server:
`$ go run main.go`
Open another tab in your terminal and run the following commands to add some records to your log:
```
$ curl -X POST localhost:8080 -d \
    '{"record": {"value": "TGV0J3MgR28gIzEK"}}'
$ curl -X POST localhost:8080 -d \
    '{"record": {"value": "TGV0J3MgR28gIzIK"}}'
$ curl -X POST localhost:8080 -d \
    '{"record": {"value": "TGV0J3MgR28gIzMK"}}'
```

## Generating code
```
make compile
```
