
# goinstall

Install go applications with `go install`.

## Example Usage

```json
"features": {
    "ghcr.io/osechet/devcontainers-features/goinstall:1": {
      "packages": "github.com/go-delve/delve/cmd/dlv@latest,go.uber.org/mock/mockgen@latest"
    }
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| packages | A comma-separated list of go packages (and their version) to install | string | - |
