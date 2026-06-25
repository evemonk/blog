FROM docker.io/library/caddy:2.11.4@sha256:597f813aa60873d4c8148c816fbc4507d496ab160d620460279557f58ee3d0b9

COPY Caddyfile /etc/caddy/

WORKDIR /www

COPY _site .

EXPOSE 80/tcp
