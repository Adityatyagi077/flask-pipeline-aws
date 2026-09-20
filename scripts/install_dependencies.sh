#!/bin/bash

set -e

APP_DIR="/var/www/flask-cicd"

echo "Installing dependencies..."

# Create application directory
mkdir -p $APP_DIR


# Create virtual environment
python3 -m venv $APP_DIR/venv

# Upgrade pip
$APP_DIR/venv/bin/python -m pip install --upgrade pip

# Install application dependencies
$APP_DIR/venv/bin/pip install -r $APP_DIR/requirements.txt

echo "Dependencies installed successfully."
