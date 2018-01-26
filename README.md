
# Docker Development environment (using docker-compose)

Docker-compose for development purposes.

## Setup

### Storage path

Rename `rename_to_.env` file to `.env` file
Setup paths for services where they store data.

### Access by name instead of localhost and port

Add `127.0.0.1 *.localhost` to your __/etc/hosts__

## Run

To run all services

$ docker-compose up -d

Enter to http://localhost for futher instructions 

# Debug

List services

$ docker-compose ps

## Stop

List services

$ docker-compose down

## HAPROXY

To run HAPROXY

$ docker-compose up -d haproxy

## RSYSLOG

To run RSYSLOG

$ docker-compose up -d rsyslog

## NGINX

To run NGINX

$ docker-compose up -d nginx

## GRAFANA

To run GRAFANA

$ docker-compose up -d grafana

## MYSQL

To run MYSQL

$ docker-compose up -d mysql

## PHPMYADMNIN

To run PHPMYADMNIN

$ docker-compose up -d phpmyadmin

## PGADMIN

To run PGADMIN

$ docker-compose up -d pgadmin

## PGSQL

To run PGSQL

$ docker-compose up -d pgsql

## REDIS

To run REDIS

$ docker-compose up -d redis

## INFLUXDB

To run INFLUXDB

$ docker-compose up -d influxdb

## CLICKHOUSE

To run CLICKHOUSE

$ docker-compose up -d clickhouse-server

### SHA256 password generation

$ PASSWORD=$(base64 < /dev/urandom | head -c8); echo "$PASSWORD"; echo -n "$PASSWORD" | shasum -a 256 | tr -d '-'

=> 0eYzcsbP
=> 9902571f1a4f44ca13306301b73e581c567befdf6c788fe39f0f058b70ea63b6