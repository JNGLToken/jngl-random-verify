# Base image for Rust
FROM rust:1.83.0

# Working directory
WORKDIR /app

# Copy project files
COPY . .

# Install necessary dependencies
RUN apt-get update && apt-get install -y libssl-dev pkg-config build-essential

# Build the Solana program
RUN cargo build-bpf

# Default command (e.g., testing)
CMD ["cargo", "test-bpf"]
