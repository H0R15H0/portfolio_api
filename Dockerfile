FROM golang:1.16.4-alpine3.13 as builder

WORKDIR /go/src/app

RUN apk update && apk add --no-cache git curl

COPY go.mod go.sum ./
RUN go mod download

RUN go get -u github.com/cosmtrek/air

COPY . .