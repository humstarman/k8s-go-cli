SHELL=/bin/bash
IMAGE=lowyard/k8s-go-cli:latest

all: build push

build:
	@docker build -t ${IMAGE} .

push:
	@docker push ${IMAGE}
