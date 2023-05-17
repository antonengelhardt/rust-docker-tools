FROM rust:1.69-alpine

ENV CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse

RUN rustup component add rustfmt clippy llvm-tools-preview
RUN apk add --no-cache musl-dev
RUN cargo install cargo-binutils
RUN rustup target add wasm32-wasi
