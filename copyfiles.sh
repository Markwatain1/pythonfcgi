#!/bin/sh

cp myproject.py ~/myproject/wsgi.py
cp wsgi.py ~/myproject
cp myproject.ini ~/myproject/myproject.ini
cp myproject.service /etc/systemd/system/myproject.service
cp myproject /etc/nginx/sites-available/myproject

