FROM ubuntu:trusty as build
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git-core build-essential wget
RUN mkdir -p /workspace
RUN cd /workspace && git clone --recursive https://github.com/kubernetes-client/go.git client
FROM golang:latest
RUN go get -v github.com/ghodss/yaml
RUN go get -v github.com/golang/glog
RUN go get -v golang.org/x/net/context
RUN go get -v golang.org/x/oauth2
RUN go get -v golang.org/x/oauth2/google
RUN apt-get update
RUN apt-get install -y git-core openssh build-essential
RUN mkdir -p /go/src/k8s.io
WORKDIR /workspace
CMD ["tail","-f","/dev/null"]
