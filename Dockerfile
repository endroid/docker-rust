FROM rust:1.86.0-alpine3.21

# Install some global packages
RUN apk add --no-cache bash git gcc libc-dev

RUN rustup component add rustfmt
RUN cargo install cargo-watch

WORKDIR /app

RUN chown -R 1000 /app

USER 1000
