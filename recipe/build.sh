#!/bin/bash

set -ex

# change shebang from the executables to use perl from the environ
# to make sure it will use the perl from conda
find src -type f -executable -exec sed -i 's|#!/usr/bin/perl|#!/usr/bin/env perl|g' '{}' \;

./configure --prefix="$PREFIX"
make
make check
make install
