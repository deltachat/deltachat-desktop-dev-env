#!/bin/bash
set -e

# reset old
rm -rf venv

# create virt env
virtualenv venv
source venv/bin/activate

# install dependencies
pip install pytest pytest-timeout requests

deactivate

cd ../../