
# ZSH Plugins (zsh-plugins)

Install (Oh-My-)ZSH plugins

## Example Usage

```json
"features": {
    "ghcr.io/devcontainers-contrib/features/zsh-plugins:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| plugins | Space separated list of ZSH plugin names that will be added to .zshrc | string | - |
| omzPlugins | Space separated list of Oh-My-ZSH custom plugin Git URLs that will be cloned | string | - |
| username | For which user to setup ZSH plugins, by default uses 'remoteUser' or 'containerUser' from config | string | - |
