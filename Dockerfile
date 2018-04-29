FROM rust
RUN apt-get update && apt-get install -y build-essential libsodium-dev libsnappy-dev librocksdb-dev pkg-config
ENV ROCKSDB_LIB_DIR=/usr/local/lib
ENV SNAPPY_LIB_DIR=/usr/local/lib
RUN git clone https://github.com/exonum/exonum.git && cd exonum && cargo test --manifest-path exonum/Cargo.toml
