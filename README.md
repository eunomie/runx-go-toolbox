# `docker runx` Go Toolbox

This is an opinionated set of tools to work with Go codebases.

On the most opinionated side, it requires a specific layout for you Go codebase, where the entrypoint is
defined in `cmd/<NAME>/main.go` and will produce a `NAME` binary that will be put in a `dist/` folder.

This is designed to be used with [docker runx](https://github.com/eunomie/runx).

Image is available on [Docker Hub](https://hub.docker.com/r/eunomie/runx-go).

```
$ docker runx eunomie/runx-go --help
```

If you want to make it easier to use, create a `.docker/runx.yaml` file in your project folder with the following content:

```
ref: eunomie/runx-go
images:
  eunomie/runx-go:
    all-actions:
      opts:
        bin_name: <NAME>
    actions:
      go:build:all:
        opts:
          platforms: linux/amd64,linux/arm64
```

That way, inside the project folder, you can simply run:

```
$ docker runx go:build
```
