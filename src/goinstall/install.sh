#!/usr/bin/env bash

set -x

PACKAGES="${PACKAGES:-""}"

if [ -z "${PACKAGES}" ]; then
  echo "Missing packages"
  exit 1
fi

IFS=',' read -r -a packages <<< "$PACKAGES"

for package in ${packages[@]}; do
  go install ${package}
done


echo "Done!"
