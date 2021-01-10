#!/bin/bash
set -e

source venv/bin/activate

cd deltachat-core-rust/python

#export DCC_RS_TARGET="debug"

python install_python_bindings.py

pytest -v tests -n auto --liveconfig ./liveconfig

deactivate