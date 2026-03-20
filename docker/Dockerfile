FROM timescale/timescaledb:latest-pg16

# Install build tools
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        git \
        postgresql-server-dev-16 && \
    rm -rf /var/lib/apt/lists/*

# Install pgvector from source
RUN git clone https://github.com/pgvector/pgvector.git && \
    cd pgvector && \
    make && \
    make install && \
    cd .. && \
    rm -rf pgvector