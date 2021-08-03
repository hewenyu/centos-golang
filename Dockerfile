FROM centos:7

RUN mkdir dir -p /tmp/download/ && wget https://dl.google.com/go/go1.16.6.linux-amd64.tar.gz -P /tmp/download/ && \
    cd /tmp/download/ && \
    tar -C /usr/local -xzf go1.16.6.linux-amd64.tar.gz

ENV PATH $PATH:/usr/local/go/bin
