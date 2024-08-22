#!/bin/bash

set -e

source dev-container-features-test-lib

# check dlv is installed
check "version" dlv version

reportResults
