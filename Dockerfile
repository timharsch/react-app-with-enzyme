FROM alpine:3.11.5

RUN apk add yarn
RUN apk add bash

RUN mkdir /code
WORKDIR /code

COPY ./ /

