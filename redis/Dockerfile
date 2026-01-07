FROM redis:8.2

COPY migrations/*.acl /etc/redis/
COPY redis.conf /usr/local/etc/redis/redis.conf

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
