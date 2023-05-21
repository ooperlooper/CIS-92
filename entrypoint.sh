#!/bin/sh


python ./manage.py migrate --noinput
python ./manage.py initadmin student student@cis.cabrillo.edu Cabri11o
python ./manage.py runserver 0.0.0.0:8000





