#!/bin/bash

systemctl daemon-reload
systemctl enable flask-cicd.service
systemctl restart flask-cicd.service

systemctl status flask-cicd.service --no-pager
