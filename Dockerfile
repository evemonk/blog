FROM docker.io/library/caddy:2.11.7@sha256:685ae3d7c34d9b5f8caeddc5d14051db7bbd88ff1f5a2fa0c16bd8ca328fb7af

COPY Caddyfile /etc/caddy/

WORKDIR /www

COPY _site .

EXPOSE 80/tcp
