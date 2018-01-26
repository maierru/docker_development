
<!-- TOC -->

- [Setup](#setup)
    - [Storage path](#storage-path)
    - [Access by name instead of localhost and port](#access-by-name-instead-of-localhost-and-port)
    - [Run](#run)
    - [Debug](#debug)
    - [Stop](#stop)
- [HAPROXY](#haproxy)
- [RSYSLOG](#rsyslog)
- [NGINX](#nginx)
- [GRAFANA](#grafana)
- [MYSQL](#mysql)
- [PHPMYADMNIN](#phpmyadmnin)
- [PGADMIN](#pgadmin)
- [PGSQL](#pgsql)
- [REDIS](#redis)
- [INFLUXDB](#influxdb)
- [CLICKHOUSE](#clickhouse)
    - [SHA256 password generation](#sha256-password-generation)

<!-- /TOC -->

Docker Development environment (using docker-compose)

Docker-compose for development purposes.

## Setup

### Storage path

Rename `rename_to_.env` file to `.env` file
Setup paths for services where they store data.

### Access by name instead of localhost and port

Add `127.0.0.1 *.localhost` to your __/etc/hosts__

### Run

To run all services (with `--build` to make actual docker image) 

$ docker-compose up -d --build --force-recreate

Enter to http://localhost for futher instructions 

### Debug

List services

$ docker-compose ps

### Stop

List services

$ docker-compose down

## HAPROXY

To run HAPROXY

$ docker-compose up -d --build --force-recreate haproxy

## RSYSLOG

To run RSYSLOG

$ docker-compose up -d --build --force-recreate rsyslog

## NGINX

To run NGINX

$ docker-compose up -d --build --force-recreate nginx

## GRAFANA

To run GRAFANA

$ docker-compose up -d --build --force-recreate grafana

## MYSQL

To run MYSQL

$ docker-compose up -d --build --force-recreate mysql

## PHPMYADMNIN

To run PHPMYADMNIN

$ docker-compose up -d --build --force-recreate phpmyadmin

## PGADMIN

To run PGADMIN

$ docker-compose up -d --build --force-recreate pgadmin

## PGSQL

To run PGSQL

$ docker-compose up -d --build --force-recreate pgsql

## REDIS

To run REDIS

$ docker-compose up -d --build --force-recreate redis

## INFLUXDB

To run INFLUXDB

$ docker-compose up -d --build --force-recreate influxdb

## CLICKHOUSE

To run CLICKHOUSE

$ docker-compose up -d --build --force-recreate clickhouse-server

### SHA256 password generation

$ PASSWORD=$(base64 < /dev/urandom | head -c8); echo "$PASSWORD"; echo -n "$PASSWORD" | shasum -a 256 | tr -d '-'

=> 0eYzcsbP
=> 9902571f1a4f44ca13306301b73e581c567befdf6c788fe39f0f058b70ea63b6