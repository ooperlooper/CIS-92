FROM docker.io/python:3.10

RUN pip install django
RUN pip install psycopg2-binary

COPY mysite /mysite
COPY ./entrypoint.sh /
RUN chmod +x entrypoint.sh
WORKDIR /mysite
ENV PORT=$PORT \
    SECRET_KEY=$SECRET_KEY \
    ANAME=$ANAME \
    AEMAIL=$AEMAIL \
    APASS=$APASS 

EXPOSE $PORT
ENTRYPOINT ["/entrypoint.sh"]
