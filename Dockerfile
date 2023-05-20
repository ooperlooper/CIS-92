FROM docker.io/python:3.10

RUN pip install django
COPY mysite /mysite
COPY ./entrypoint.sh /
RUN chmod +x entrypoint.sh

ARG PORT
ENV PORT=$PORT
WORKDIR /mysite 
ENTRYPOINT ["/entrypoint.sh"]
