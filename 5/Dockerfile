FROM ubuntu:22.04

RUN apt-get update && apt-get install -y coreutils \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root/lab
CMD ["/bin/bash"]
