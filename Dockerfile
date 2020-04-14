# Run environment
# Use the version from Debian unstable
FROM debian:sid

RUN DEBIAN_FRONTEND=noninteractive apt-get update -yqq

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get install --yes --no-install-recommends check-all-the-things

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get remove --yes check-all-the-things && \
    apt-get install --yes check-all-the-things

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get remove --yes check-all-the-things && \
    apt-get install --yes --install-suggests check-all-the-things
