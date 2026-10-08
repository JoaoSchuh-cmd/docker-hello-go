FROM golang:alpine AS builder

WORKDIR /app
COPY main.go .

RUN CGO_ENABLED=0 GOOS=linux go build -trimpath -ldflags="-s -w -buildid=" -o /main main.go

FROM scratch
COPY --from=builder /main /main
ENTRYPOINT ["/main"]