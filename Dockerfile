FROM ubuntu

# Use Hungarian Ubuntu mirror and install wget

RUN sed -i 's/archive.ubuntu.com/hu.archive.ubuntu.com/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends wget && \
    rm -rf /var/lib/apt/lists/*
