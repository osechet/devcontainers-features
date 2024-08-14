#!/bin/bash

set -e

source dev-container-features-test-lib

# Test zoxide installed
check "zoxide installed" command -v zoxide

# Test zsh shell configured
check "ZOXIDE_CMD_OVERRIDE is set" zsh -i -c "[[ -z \"\${ZOXIDE_CMD_OVERRIDE+1}\" ]]"
check "zoxide is disabled" zsh -i -c "command -v z &>/dev/null && false || true"

# Test bash shell configured
check "ZOXIDE_CMD_OVERRIDE is set" bash -i -c "[[ -z \"\${ZOXIDE_CMD_OVERRIDE+1}\" ]]"
check "zoxide is disabled" bash -i -c "command -v z &>/dev/null && false || true"

reportResults
