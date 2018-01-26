FROM redis:latest

VOLUME /var/lib/redis
COPY redis.conf /usr/local/etc/redis/redis.conf
ENTRYPOINT ["redis-server", "/usr/local/etc/redis/redis.conf"]
