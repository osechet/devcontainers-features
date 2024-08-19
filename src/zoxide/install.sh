#!/usr/bin/env bash
set -x
REPLACE_CD=${REPLACECD:-""}
ENABLE=${ENABLE:-""}
USERNAME=${USERNAME:-$_REMOTE_USER}

shells="bash zsh"

# Installation
install() {
  . ./library_scripts.sh

  ensure_nanolayer nanolayer_location $default_nanolayer_version

  $nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/gh-release:1.0.25" \
    --option repo='ajeetdsouza/zoxide' --option binaryNames='zoxide' --option version="$VERSION"
}

configure() {
  if [ "$USERNAME" = "root" ]; then
    USER_LOCATION="/root"
  else
    USER_LOCATION="/home/$USERNAME"
  fi

  # Check available shells
  for s in $shells; do
    if ! command -v "$s" > /dev/null; then
      shells=${shells/$s/}
    fi
  done

  # Configure available shells
  for shell in $shells; do
    [ $shell = zsh ] && dest=${ZDOTDIR:-$USER_LOCATION}/.zshrc || dest=$USER_LOCATION/.bashrc
    # Set ZOXIDE_CMD_OVERRIDE
    if [ "${REPLACE_CD}" = "true" ]; then
      echo -e '\n# Replace cd with zoxide\nexport ZOXIDE_CMD_OVERRIDE="cd"' >> $dest
    fi

    if [ "${ENABLE}" = "true" ]; then
      echo -e "\n# Enable zoxide\neval \"\$(zoxide init $shell)\"" >> $dest
    fi
  done
}

install
configure
