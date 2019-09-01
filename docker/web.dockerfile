FROM nginx:1.15

ADD ./docker/nginx/vhost.conf /etc/nginx/conf.d/default.conf
ADD ./docker/devel.simplewap.io.pem /etc/ssl/certs/devel.simplewap.io.pem
ADD ./docker/devel.simplewap.io-key.pem /etc/ssl/private/devel.simplewap.io-key.pem

WORKDIR /var/www