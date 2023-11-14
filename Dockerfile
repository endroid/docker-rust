FROM rust:1.73.0-alpine3.18

WORKDIR /app

RUN chown -R 1000 /app

USER 1000
