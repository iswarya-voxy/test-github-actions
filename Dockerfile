FROM alpine:3.8

WORKDIR /usr/src/test

#Install Python Pip and the requirements
RUN apk add --no-cache py2-pip py2-lxml && \
pip install --no-cache-dir --upgrade pip && \
pip install --no-cache-dir RESTinstance==1.0.0b35 robotframework==3.0.4

ENTRYPOINT ["robot"]
CMD ["--help"]
