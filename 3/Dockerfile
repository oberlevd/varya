FROM ubuntu:22.04

RUN apt-get update && apt-get install -y gcc rsyslog \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i '/imklog/s/^/#/' /etc/rsyslog.conf

WORKDIR /root/lab
CMD ["/bin/bash"]
