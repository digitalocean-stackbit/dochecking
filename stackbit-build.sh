#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://staging.widget.stackbit.com/init.js 60780d3fb83b8400165dfd52

echo "stackbit-build.sh: finished build"
