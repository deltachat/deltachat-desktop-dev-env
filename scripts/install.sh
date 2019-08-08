#!/bin/bash
set -e

rm -rf ./deltachat-node/deltachat-core-rust
ln -sf ../deltachat-core-rust/ ./deltachat-node/

cd deltachat-core-rust
cargo build
cd ..

cd deltachat-node
npm i
cd ..

cd ./deltachat-desktop/
npm link ../deltachat-node
cd ..

cd deltachat-desktop
npm i
npm run build
cd ..