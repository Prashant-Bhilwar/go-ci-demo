FROM golang:1.22-alpine AS builder

WORKDIR /app

COPY go.mod .
RUN go mod download

COPY . .
RUN go build -o server main.go

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/server .
CMD [ "./server" ]