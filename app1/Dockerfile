FROM golang:1.19-alpine AS builder

WORKDIR /build

COPY go.mod go.sum ./
RUN go mod download

COPY . .

ENV CGO_ENABLED=0 GOOS=linux
RUN go build -o main .

FROM golang:1.19-alpine AS production

COPY --from=builder /build/main .

# Command to run when starting the container.
ENTRYPOINT ["./main"]