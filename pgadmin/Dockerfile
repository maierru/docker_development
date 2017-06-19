# https://github.com/thaJeztah/pgadmin4-docker
# This version of pgAdmin 4 brings the binaries required to backup/restore databases with it. You can do backups of PostgreSQL 9.5 servers.
# To enable the feature go to File -> Preferences -> Binary paths and set them to /usr/bin.
# https://github.com/foxylion/docker-pgadmin4
FROM python:2-alpine

ENV PGADMIN_VERSION=1.3 \
    PYTHONDONTWRITEBYTECODE=1

RUN apk add --no-cache alpine-sdk postgresql postgresql-dev \
 && echo "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v${PGADMIN_VERSION}/pip/pgadmin4-${PGADMIN_VERSION}-py2.py3-none-any.whl" > requirements.txt \
 && pip install --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt \
 && apk del alpine-sdk \
 && addgroup -g 50 -S pgadmin \
 && adduser -D -S -h /pgadmin -s /sbin/nologin -u 1000 -G pgadmin pgadmin \
 && mkdir -p /pgadmin/config /pgadmin/storage; \
 chown -R 1000:50 /pgadmin

ENV SERVER_MODE false

ENV MAIL_SERVER   mail.example.tld
ENV MAIL_PORT     465
ENV MAIL_USE_SSL  true
ENV MAIL_USERNAME username
ENV MAIL_PASSWORD password

EXPOSE 5050

COPY LICENSE config_local.py /usr/local/lib/python2.7/site-packages/pgadmin4/

USER pgadmin:pgadmin
CMD [ "python", "./usr/local/lib/python2.7/site-packages/pgadmin4/pgAdmin4.py" ]
VOLUME /pgadmin/
