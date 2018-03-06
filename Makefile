IMAGENAME=jtilander/maas-cli
TAG?=latest

image:
	docker build -t $(IMAGENAME):$(TAG) .
	docker images $(IMAGENAME):$(TAG)

test:
	docker run --rm -it -v $(PWD)/tmp:/root --env-file=".env" $(IMAGENAME):$(TAG) maas-cli nodes read

