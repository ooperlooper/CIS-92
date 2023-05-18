FROM docker.io/python:3.10

RUN pip install django
EXPOSE ${PORT}
COPY mysite /mysite
COPY ./entrypoint.sh /
ENV SECRET_KEY=django-super-secret-key \
    USERNAME=student \
    EMAIL=student@cis.cabrillo.edu \
    PASSWORD=Cabri11o
RUN chmod +x entrypoint.sh 
WORKDIR /mysite 
ENTRYPOINT ["/entrypoint.sh"]
