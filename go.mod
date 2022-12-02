module github.com/dtm-labs/quick-start-sample

go 1.16

// replace github.com/dtm-labs/client => ../client

require (
	github.com/dtm-labs/client v1.16.6
	github.com/dtm-labs/logger v0.0.2 // indirect
	github.com/gin-gonic/gin v1.8.1
	github.com/golang/snappy v0.0.4 // indirect
	github.com/klauspost/compress v1.15.12 // indirect
	github.com/lithammer/shortuuid/v3 v3.0.7
	github.com/montanaflynn/stats v0.6.6 // indirect
	github.com/youmark/pkcs8 v0.0.0-20201027041543-1326539a0a0a // indirect
	go.mongodb.org/mongo-driver v1.11.0 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	go.uber.org/multierr v1.8.0 // indirect
	go.uber.org/zap v1.24.0 // indirect
	golang.org/x/crypto v0.3.0 // indirect
	google.golang.org/genproto v0.0.0-20221201204527-e3fa12d562f3 // indirect
	google.golang.org/grpc v1.51.0
	google.golang.org/protobuf v1.28.1
)
