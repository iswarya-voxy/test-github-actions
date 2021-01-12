FROM alpine:3.8

WORKDIR /usr/src/test

#Install Python Pip and the requirements
RUN apk add --no-cache py2-pip py2-lxml && \
pip install --no-cache-dir --upgrade pip

RUN apk add --no-cache bash

RUN echo 'we are running some # of cool things'
