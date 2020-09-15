# buildtagpush

Image to build, tag and push docker images. Great for Google Cloud Build.

 - BuildKit caching
 - Pulls images needed (otherwise fails on google cloud build with registry mirror, see https://github.com/moby/moby/issues/40262#issuecomment-656036657)
 - Easy to follow output with seconds since beginning

A sample cloudbuild.yaml:

```
steps:
  - name: mattipaksula/buildtagpush
    env:
      - "REGISTRY=gcr.io/your-project"
      - "IMAGE=your-image"
      - "TAG=[latest]"
      - "CACHE_TAG=[$TAG]"
      - "WORKDIR=[/workspace]"
      - "DOCKERFILE=[Dockerfile]"
      - "BUILD_OPTS=['']"
```
