#!/usr/bin/env bash
PYTHON_ENV=$1
python3 -m venv /opt/$PYTHON_ENV
source /opt/$PYTHON_ENV/bin/activate
pip3 install -r /requirements/requirements.txt
