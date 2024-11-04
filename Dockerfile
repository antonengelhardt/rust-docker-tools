FROM rust:1.78-alpine

ENV CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse

RUN apk add --no-cache musl-dev curl tar
RUN rustup component add rustfmt clippy llvm-tools-preview
RUN rustup target add wasm32-wasip1
RUN cargo install cargo-binutils

RUN apk add --no-cache perl make
RUN cargo install cargo-deny
