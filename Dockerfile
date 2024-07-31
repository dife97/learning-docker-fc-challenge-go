FROM golang:1.23rc2-alpine3.20

WORKDIR /usr/local/go/src/app

COPY . .

RUN go mod init index

ENTRYPOINT [ "go", "run", "." ]