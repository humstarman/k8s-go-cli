FROM golang:latest
ENV VER v10.0.0
#RUN go get -v github.com/ghodss/yaml
#RUN go get -v github.com/golang/glog
#RUN go get -v golang.org/x/net/context
#RUN go get -v golang.org/x/oauth2
#RUN go get -v golang.org/x/oauth2/google
RUN go get -v k8s.io/client-go/${VER}/kubernetes 
