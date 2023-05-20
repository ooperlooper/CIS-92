FROM docker.io/python:3.10

RUN pip install django
COPY mysite /mysite
COPY ./entrypoint.sh /
RUN chmod +x entrypoint.sh
WORKDIR /mysite
ENV PORT=$PORT
ENV SECRET_KEY=$SECRET_KEY
EXPOSE $PORT
ENTRYPOINT ["/entrypoint.sh"]
