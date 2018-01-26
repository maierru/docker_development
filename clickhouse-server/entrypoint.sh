#!/bin/bash

for dir in 'data/default' 'metadata/default';
do
  if [ ! -d "/opt/clickhouse/$dir" ]; then
    mkdir -p /opt/clickhouse/$dir
  fi
done

chown -R clickhouse:clickhouse /opt/clickhouse

#/usr/bin/clickhouse-server --config=/etc/clickhouse-server/config.xml
/usr/bin/clickhouse-server --config=${CLICKHOUSE_CONFIG}
