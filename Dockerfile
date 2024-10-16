FROM rust:1.80-alpine

ENV CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse

RUN apk add --no-cache musl-dev curl tar make
RUN rustup component add rustfmt clippy llvm-tools-preview
RUN rustup target add wasm32-wasi
RUN cargo install cargo-binutils
RUN cargo install cargo-deny
RUN cargo install cargo-audit
RUN cargo install cargo-outdated
