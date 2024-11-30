FROM rust:1.71
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y libssl-dev pkg-config build-essential
RUN cargo build-bpf
CMD ["cargo", "test-bpf"]
