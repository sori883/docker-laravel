#!/bin/bash
#set -e
#
# This script is automatically executed when the postgresql container is started
# and `db-store` is not found.
#
#psql -v ON_ERROR_STOP=1 --username "$DB_USER" --dbname "$DB_NAME" <<-EOSQL
#    CREATE USER docker_user;
#    CREATE DATABASE docker_db;
#    GRANT ALL PRIVILEGES ON DATABASE docker_db TO docker_user;
#EOSQL