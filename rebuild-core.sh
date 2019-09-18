#!/bin/bash
set -e

cd deltachat-node
export RUSTFLAGS=-g
npm run rebuild-all
cd ..