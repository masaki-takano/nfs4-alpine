user=takanomasaki
name=nfs4-alpine

docker=docker
tag = $(user)/$(name)
dockerfile = Dockerfile

push: build
	$(docker) push $(user)/$(name)

build:
	$(docker) build -t $(tag) -f $(dockerfile) .

