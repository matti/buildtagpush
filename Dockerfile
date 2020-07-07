# FROM gcr.io/cloud-builders/docker:19.03.8
FROM google/cloud-sdk:alpine

RUN apk add --no-cache \
  bash sed \
  docker

COPY gbuilder /usr/bin
WORKDIR /workspace
ENTRYPOINT [ "/usr/bin/gbuilder" ]
