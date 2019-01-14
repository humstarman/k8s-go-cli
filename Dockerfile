FROM golang:latest
RUN go get -v github.com/ghodss/yaml
RUN go get -v github.com/golang/glog
RUN go get -v golang.org/x/net/context
RUN go get -v golang.org/x/oauth2
RUN go get -v golang.org/x/oauth2/google
