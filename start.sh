#!/bin/bash

echo "start authentication service...."
python manage.py makemigrations authCore
python manage.py migrate
python initializer.py
python manage.py runserver 0.0.0.0:8000
