package main

import (
	_ "github.com/micro/go-plugins/broker/nats"
	_ "github.com/micro/go-plugins/codec/jsonrpc2"
	_ "github.com/micro/go-plugins/registry/nats"
	_ "github.com/micro/go-plugins/transport/nats"
)
