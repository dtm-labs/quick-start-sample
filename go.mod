module github.com/dtm-labs/quick-start-sample

go 1.16

replace github.com/dtm-labs/client => ../client

require (
	github.com/dtm-labs/client v1.15.0
	github.com/gin-gonic/gin v1.8.1
	github.com/lithammer/shortuuid/v3 v3.0.7
	google.golang.org/grpc v1.47.0
	google.golang.org/protobuf v1.28.0
)
