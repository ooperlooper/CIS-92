#!/bin/sh


python ./manage.py migrate --noinput
python ./manage.py initadmin $ANAME $AEMAIL $APASS
python ./manage.py runserver 0.0.0.0:$PORT





