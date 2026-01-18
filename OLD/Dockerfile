FROM docker.io/library/caddy:2.10.2

COPY Caddyfile /etc/caddy/

WORKDIR /www

COPY public .

EXPOSE 80/tcp
