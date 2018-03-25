package main

import (
	_ "github.com/micro/go-plugins/registry/kubernetes"

	_ "github.com/micro/go-plugins/selector/cache"
	_ "github.com/micro/go-plugins/selector/static"

	_ "github.com/micro/go-plugins/client/grpc"
	_ "github.com/micro/go-plugins/server/grpc"

	_ "github.com/micro/go-plugins/broker/nats"
	_ "github.com/micro/go-plugins/transport/nats"
)
