.PHONY: build docker-build docker-push scan deploy

REGISTRY=mahesh.azurecr.io
IMAGE_NAME=testfouridspoc
TAG=local

build:
	@echo "No compile step for PHP app"

docker-build:
	docker build -t $(REGISTRY)/$(IMAGE_NAME):$(TAG) -f backend/Dockerfile .

docker-push:
	az acr login --name mahesh
	docker push $(REGISTRY)/$(IMAGE_NAME):$(TAG)

scan:
	./scripts/trivy-scan.sh $(REGISTRY)/$(IMAGE_NAME):$(TAG) || true

deploy:
	./deployment/scripts/deploy.sh $(REGISTRY)/$(IMAGE_NAME):$(TAG) knowledgecity
