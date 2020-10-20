#!/bin/bash

if [ $PRODUCTION = 1 ]; then
  echo 'Running migrations'
  python manage.py migrate --noinput --clear
  echo 'Starting production server'
  gunicorn --workers=5 --threads=2 backend.wsgi:application -b 0.0.0.0:8000
else
  echo 'Starting development server'
  python manage.py runserver 0.0.0.0:8000
fi

