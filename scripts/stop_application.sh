#!/bin/bash

set -e

APP_DIR="/var/www/flask-cicd"

cp $APP_DIR/flask-cicd.service /etc/systemd/system/flask-cicd.service

systemctl daemon-reload

systemctl enable flask-cicd.service

systemctl restart flask-cicd.service

sleep 2

systemctl status flask-cicd.service --no-pager
