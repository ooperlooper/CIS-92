#! /bin/bash
# This is the testing script!
docker build -t mysite .
(cd mysite/;docker run -it --rm -e SECRET_KEY='xxxyyy' -e PORT=8080 -p 8080:8080 mysite)
