FROM python:3.7-alpine
MAINTAINER Tung Pham <phsontung@gmail.com>

RUN apk add --update supervisor &&\
    apk add --no-cache --virtual .build-deps gcc musl-dev &&\
    pip install cython &&\
    pip install pipenv==2018.10.13 &&\
    rm  -rf /tmp/* /var/cache/apk/* &&\
    apk del .build-deps gcc musl-dev

ADD supervisord.conf /etc/

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]

