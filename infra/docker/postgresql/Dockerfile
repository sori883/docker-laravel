FROM postgres:12
LABEL maintainer="sorinaji <hello@sori883.com>"

ARG DB_USER=phper \
 DB_NAME=laravel_local

ENV TZ=UTC \
 DB_USER=$DB_USER \
 DB_NAME=$DB_NAME

RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

COPY ./infra/docker/postgresql/docker-entrypoint-initdb.d/ ./postgres/docker-entrypoint-initdb.d/
