
# Docker Development environment (using docker-compose)

Docker-compose for development purposes.

To run all services

$ docker-compose up -d

Enter to http://localhost for futher instructions 

List services

$ docker-compose ps

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

# FAQ

Pro-Tip: To keep browsers from treating .localhost (and .test) domains as search terms, include the protocol when typing it into the URL field. For example: http://grafana.localhost rather than grafana.localhost