#!/usr/bin/env bash
set -o errexit

pip install -r requirements.txt

python3.9 manage.py collectstatic --noinput
python manage.py migrate