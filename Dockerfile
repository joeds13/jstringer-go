FROM 145351228327.dkr.ecr.eu-west-1.amazonaws.com/ubuntu16:0.3.0
MAINTAINER Joe Stringer <joe@stringer.sh>
ENV GOPATH=/opt/go
ENV PATH=$PATH:/usr/local/go/bin:/opt/go/bin
RUN mkdir -p /opt/go/bin && \
    mkdir -p /opt/go/pkg && \
    mkdir -p /opt/go/src
RUN curl -LO https://storage.googleapis.com/golang/go1.7.4.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.7.4.linux-amd64.tar.gz && \
    rm -f /go1.7.4.linux-amd64.tar.gz
RUN curl -LO https://github.com/Masterminds/glide/releases/download/v0.12.3/glide-v0.12.3-linux-amd64.tar.gz && \
    tar -C /usr/local -xzf glide-v0.12.3-linux-amd64.tar.gz && \
    mv /usr/local/linux-amd64/glide /usr/local/bin/glide && \
    rm -rf /usr/local/linux-amd64 && \
    rm -f /glide-v0.12.3-linux-amd64.tar.gz
