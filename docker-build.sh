#! /bin/bash

set -eux

hugo build

docker build --no-cache --pull --progress plain -t docker.io/biow0lf/blog:main .
