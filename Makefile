.PHONY: build docker-build scan deploy

build:
	@echo "No compile step for PHP app"

docker-build:
	docker build -t knowledgecity-backend:local -f backend/Dockerfile .

scan:
	./scripts/trivy-scan.sh knowledgecity-backend:local || true

deploy:
	./deployment/scripts/deploy.sh knowledgecity-backend:local knowledgecity
