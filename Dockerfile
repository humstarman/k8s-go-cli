FROM lowyard/k8s-go-cli:tmp
RUN mkdir -p /go/src/k8s.io
ADD manifest/client /go/src/k8s.io/
WORKDIR /workspace
CMD ["tail","-f","/dev/null"]
