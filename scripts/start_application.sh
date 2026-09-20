#!/bin/bash

set -e

APP_DIR="/var/www/flask-cicd"

echo "Starting Flask CI/CD application..."

# Install systemd service
cp $APP_DIR/flask-cicd.service /etc/systemd/system/flask-cicd.service

# Reload systemd
systemctl daemon-reload

# Enable service at boot
systemctl enable flask-cicd.service

# Start/restart application
systemctl restart flask-cicd.service

# Give Gunicorn a moment to start
sleep 3

# Show service status
systemctl --no-pager status flask-cicd.service
