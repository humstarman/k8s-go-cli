FROM golang:latest
RUN go get -v github.com/ghodss/yaml
RUN go get -v github.com/golang/glog
RUN go get -v golang.org/x/net/context
RUN go get -v golang.org/x/oauth2
RUN go get -v golang.org/x/oauth2/google
RUN apt-get update
RUN apt-get install -y git opnessh
RUN mkdir -p /go/src/k8s.io
RUN cd /go/src/k8s.io && git clone --recursive https://github.com/kubernetes-client/go.git client
WORKDIR /workspace
CMD ["tail","-f","/dev/null"]
