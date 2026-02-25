FROM docker.io/library/caddy:2.11.1

COPY Caddyfile /etc/caddy/

WORKDIR /www

COPY public .

EXPOSE 80/tcp
