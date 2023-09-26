FROM golang:1.8 AS builder

WORKDIR /src

COPY hello.go .

RUN go build -o hello

FROM scratch

COPY --from=builder /src/hello /

CMD ["/hello"]


