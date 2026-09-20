#!/bin/bash

set -e

APP_DIR="/var/www/flask-cicd"

mkdir -p $APP_DIR

python3 -m venv $APP_DIR/venv

$APP_DIR/venv/bin/pip install --upgrade pip

$APP_DIR/venv/bin/pip install -r $APP_DIR/requirements.txt
