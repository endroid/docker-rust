FROM rust:1.83.0-alpine3.21

# Install some global packages
RUN apk add --no-cache bash git gcc libc-dev pkgconf libx11-dev alsa-lib-dev eudev-dev

WORKDIR /app

RUN chown -R 1000 /app

USER 1000
