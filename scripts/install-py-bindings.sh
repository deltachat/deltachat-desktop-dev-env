#!/bin/bash
set -e

source ./venv/bin/activate

cd ./deltachat-core-rust/python

python install_python_bindings.py

deactivate