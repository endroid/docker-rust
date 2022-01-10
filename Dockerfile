FROM rust:1.31

RUN useradd -ms /bin/bash rust

WORKDIR /app

RUN chown -R 1000 /app

USER rust
