# Pull down upstream golang image
FROM golang:1.9
COPY . /go/src/docker-squash
RUN go get ./...

# Copy binary into target docker image
FROM alpine:latest
RUN apk add tar
COPY --from=0 /go/bin/docker-squash /
ENTRYPOINT ["/docker-squash"]
