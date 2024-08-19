
set -e

. ./library_scripts.sh

ensure_nanolayer nanolayer_location $default_nanolayer_version

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/gh-release:1.0.25" \
    --option repo='junegunn/fzf' --option binaryNames='fzf' --option version="$VERSION"

echo 'Done!'

