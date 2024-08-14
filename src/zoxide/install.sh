#!/usr/bin/env bash
set -x
REPLACE_CD=${REPLACECD:-""}
USERNAME=${USERNAME:-$_REMOTE_USER}

prefix=/usr/local
shells="bash zsh"

install_zoxide() {
  curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh -s -- --bin-dir ${prefix}/bin --man-dir ${prefix}/share/man
}

# Install zoxide
install_zoxide

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

  echo -e "\n# Enable zoxide\neval \"\$(zoxide init $shell)\"" >> $dest
done
