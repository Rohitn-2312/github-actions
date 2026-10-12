FROM alpine:3.22

RUN apk add --no-cache ca-certificates

CMD ["sh", "-c", "echo Docker image built successfully"]
