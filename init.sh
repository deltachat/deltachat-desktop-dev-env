#!/bin/bash
set -e

git submodule init
git submodule update --remote

# the following 2 points are covered by the node branch for now
# idea replace all "release" with "debug" in deltachat-node/binding.gyp
# idea remove --release argument in deltachat-node/scripts/rebuild-core.js
# idea do the change in package.json in deltachat-node/

# todo deltachat-desktop package json dc-node version to "../deltachat-node"

source ./scripts/install.sh