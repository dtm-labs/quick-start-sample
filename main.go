package main

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/dtm-labs/client/dtmcli/logger"
	dtmcliqs "github.com/dtm-labs/quick-start-sample/dtmcli-qs"
	dtmgrpcqs "github.com/dtm-labs/quick-start-sample/dtmgrpc-qs"
	workflowgrpc "github.com/dtm-labs/quick-start-sample/workflow-grpc"
	workflowhttp "github.com/dtm-labs/quick-start-sample/workflow-http"
)

var commands = map[string]func(){
	"dtmcli":        dtmcliqs.Main,
	"dtmgrpc":       dtmgrpcqs.Main,
	"workflow-http": workflowhttp.Main,
	"workflow-grpc": workflowgrpc.Main,
}

func main() {
	logger.InitLog("debug")
	var cmd string
	if len(os.Args) > 1 {
		cmd = os.Args[1]
	}
	fn := commands[cmd]
	if fn == nil {
		fmt.Printf("bad command: '%s'\n", cmd)
		keys := []string{}
		for k := range commands {
			keys = append(keys, k)
		}
		fmt.Printf("Usage: %s <%s>\n", filepath.Base(os.Args[0]), strings.Join(keys, "|"))
		os.Exit(0)
	}
	fn()
}
