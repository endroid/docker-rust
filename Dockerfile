FROM rust:1.73.0-alpine3.18

# Install some global packages
RUN apk add --no-cache bash git

WORKDIR /app

RUN chown -R 1000 /app

USER 1000
