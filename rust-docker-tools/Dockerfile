FROM rust:1.69

ENV CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse

RUN rustup component add rustfmt clippy llvm-tools-preview
RUN cargo install cargo-binutils
RUN rustup target add wasm32-wasi
