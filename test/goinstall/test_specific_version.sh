#!/bin/bash

set -e

source dev-container-features-test-lib

# check cobra-cli is installed
check "cobra-cli installed" cobra-cli --help

reportResults
