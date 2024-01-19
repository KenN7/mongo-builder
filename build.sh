#!/bin/bash
set -euxo pipefail

# Set the makedeb release you want.
export MAKEDEB_RELEASE='makedeb'

# Run the install script. Note that it's `bash -c` and not `bash -ci` now.
bash -c "$(wget -qO - 'https://shlink.makedeb.org/install')"

# build mongo-c
cd mongo-c/
makedeb -s PKGBUILD

# build mongo-cxx
cd mongo-cxx/
makedeb -s PKGBUILD

