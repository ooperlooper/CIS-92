FROM docker.io/python:3.10

RUN pip install django
COPY mysite /mysite
COPY ./entrypoint.sh /
RUN chmod +x entrypoint.sh
ARG PORT
ENV PORT=$PORT
ENV SECRET_KEY=$SECRET_KEY
WORKDIR /mysite
EXPOSE $PORT
ENTRYPOINT ["/entrypoint.sh"]
