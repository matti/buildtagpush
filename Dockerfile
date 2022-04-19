FROM alpine:3.15.4

RUN apk add --no-cache \
  bash sed \
  docker-cli

COPY buildtagpush /usr/bin
WORKDIR /workspace
ENTRYPOINT [ "/usr/bin/buildtagpush" ]
