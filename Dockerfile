FROM --platform=amd64 rust:1.79.0

WORKDIR /app

COPY ./Cargo.toml ./rust-toolchain ./README.md /app/
COPY ./src /app/src
COPY ./benches /app/benches
COPY ./examples /app/examples
COPY ./models /app/models

RUN cargo build --release

CMD [ "cargo", "bench" ]
