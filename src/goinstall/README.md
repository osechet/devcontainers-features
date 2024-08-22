
# goinstall

Install go application with `go install`.

## Example Usage

```json
"features": {
    "ghcr.io/osechet/devcontainers-features/goinstall:1": {
      "package": "github.com/go-delve/delve/cmd/dlv"
    }
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| package | The go package to install | string | - |
| version | The version to install | string | latest |
