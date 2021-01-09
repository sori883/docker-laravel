FROM postgres:12
LABEL maintainer="sorinaji <hello@sori883.com>"

ENV TZ=UTC

COPY ./infra/docker/postgresql/docker-entrypoint-initdb.d/init-user-db.sh ./postgres/docker-entrypoint-initdb.d/init-user-db.sh
