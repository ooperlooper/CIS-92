#!/bin/sh

python ./manage.py migrate --noinput
python ./manage.py initadmin student student@cis.cabrillo.edu Cabri11o
python ./manage.py runserver 172.0.0.1:8000

