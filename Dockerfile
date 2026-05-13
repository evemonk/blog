FROM docker.io/library/caddy:2.11.3@sha256:68d335223f05fadcc55ec3677521a2e61488949d30b5c7beeb3d0b2309efca1d

COPY Caddyfile /etc/caddy/

WORKDIR /www

COPY _site .

EXPOSE 80/tcp
