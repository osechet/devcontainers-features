#!/bin/bash

set -e

source dev-container-features-test-lib

# check cobra-cli is installed
check "cobra-cli instaled" cobra-cli --help

reportResults
