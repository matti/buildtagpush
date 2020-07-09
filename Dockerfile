FROM alpine:3.12.0

RUN apk add --no-cache \
  bash sed \
  docker-cli

COPY buildbuild /usr/bin
WORKDIR /workspace
ENTRYPOINT [ "/usr/bin/buildbuild" ]
