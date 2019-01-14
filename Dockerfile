FROM lowyard/k8s-go-cli:tmp
RUN mkdir -p /go/src/k8s.io
ADD deps/client /go/src/k8s.io/client/
WORKDIR /workspace
CMD ["tail","-f","/dev/null"]
