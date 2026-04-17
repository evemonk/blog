FROM docker.io/library/caddy:2.11.2@sha256:22e1d921a7dd98ea722ebd6819de785fd71abdab7f7fed8a2378e96d29bb923a

COPY Caddyfile /etc/caddy/

WORKDIR /www

COPY _site .

EXPOSE 80/tcp
