FROM rust:1.90.0-alpine3.22

# Install some global packages
RUN apk add --no-cache bash git gcc libc-dev protobuf-dev

RUN rustup component add rustfmt
RUN cargo install cargo-watch

WORKDIR /app

RUN chown -R 1000 /app

USER 1000
