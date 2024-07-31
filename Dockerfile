FROM golang:alpine AS builder

WORKDIR /usr/local/go/src/app

COPY . .

RUN go mod init app && \
    go build -o /index

FROM scratch
COPY --from=builder /index /index

ENTRYPOINT ["/index"]