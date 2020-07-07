# gbuilder

Google cloud build that does not hurt

 - BuildKit caching
 - Pulls images needed (fails on google cloud, see https://github.com/moby/buildkit/issues/1271)
 - Easy to follow output

A sample cloudbuild.yaml:

```
steps:
  - name: mattipaksula/gbuilder
    env:
      - "REGISTRY=gcr.io/your-project"
      - "IMAGE=your-image"
      - "TAG=[latest]"
      - "CACHE_TAG=[$TAG]"
      - "WORKDIR=[/workspace]"
```
