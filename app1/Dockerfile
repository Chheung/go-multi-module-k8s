FROM golang:1.19-alpine AS builder

COPY go.mod go.sum ./
RUN go mod download

COPY . .

ENV CGO_ENABLED=1 GOOS=linux
RUN go build -ldflags="-s -w" -o main .

FROM golang:1.19-alpine AS production

COPY --from=builder /main .

# Command to run when starting the container.
ENTRYPOINT ["./main"]