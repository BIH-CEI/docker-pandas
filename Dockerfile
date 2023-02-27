ARG BASE=python:3.10-alpine


FROM $BASE

LABEL org.opencontainers.image.description Base image having numpy and pandas already installed

RUN apk add --virtual build-dependencies build-base \
    && pip install pandas==1.5.3 \
    && apk del build-dependencies
RUN apk add --no-cache libstdc++
