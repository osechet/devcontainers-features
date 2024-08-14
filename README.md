# Devcontainer Features

![Codespaces](https://img.shields.io/static/v1?style=for-the-badge&message=Codespaces&color=181717&logo=GitHub&logoColor=FFFFFF&label=)
![Devcontainers](https://img.shields.io/static/v1?style=for-the-badge&message=Devcontainers&color=2496ED&logo=Docker&logoColor=FFFFFF&label=)

🐳 Extra add-in features for
[devcontainers](https://code.visualstudio.com/docs/devcontainers/containers) and
[GitHub Codespaces](https://github.com/features/codespaces)

💻 Works with devcontainers
☁️ Works with GitHub Codespaces

Created from <https://github.com/devcontainers-contrib/features>

## Usage

Just add a `.devcontainer/devcontainer.json` file with a `features` key. 

📚 Make sure to inspect each feature for feature-specific options!

```json
{
  "image": "mcr.microsoft.com/devcontainers/universal",
  "features": {
    "ghcr.io/osechet/features/fzf": {},
    "ghcr.io/osechet/features/zoxide": {}
  }
}
```

Then, after adding your devcontainer config file, you can open it in GitHub Codespaces, 
or [open it locally using VS Code]. Be warned some features will compile things from source code and may take a while!
