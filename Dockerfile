# Build stage
FROM golang:1.22 AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o login-service

# Runtime stage
FROM ubuntu:22.04
WORKDIR /app
COPY --from=builder /app/login-service .
EXPOSE 8080
CMD ["./login-service"]