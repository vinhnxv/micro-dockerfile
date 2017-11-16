FROM golang:1.9.2 as builder
WORKDIR /go/src/github.com/micro
RUN go get -u github.com/golang/dep/cmd/dep \
  && git clone https://github.com/micro/micro.git
WORKDIR /go/src/github.com/micro/micro
COPY ./plugins.go .
RUN dep init
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-w' -i -o micro ./main.go ./plugins.go

FROM alpine:3.2
RUN apk add --update ca-certificates && \
    rm -rf /var/cache/apk/* /tmp/*
WORKDIR /
COPY --from=builder /go/src/github.com/micro/micro/micro .
ENTRYPOINT [ "/micro" ]