FROM redis:alpine

CMD [ "redis-server", "/etc/redis/redis.conf" ]