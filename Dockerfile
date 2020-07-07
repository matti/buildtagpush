FROM gcr.io/cloud-builders/docker:19.03.8

COPY gbuilder /usr/bin
WORKDIR /workspace
ENTRYPOINT [ "/usr/bin/gbuilder" ]
