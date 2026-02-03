#! /bin/sh

set -eux

bundle exec jekyll build

docker build --no-cache --pull --progress plain -t docker.io/biow0lf/blog:main .
