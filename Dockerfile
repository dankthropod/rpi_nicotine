# Use the base image
FROM kokmok/rpi-nicotine-novnc

# Install miniupnpc
RUN apt-get update && \
    apt-get install -y miniupnpc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Preserve the original entrypoint
ENTRYPOINT ["/init"]

