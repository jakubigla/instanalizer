run:
	@docker-compose up -d

dockerrun:
	@scripts/generate-dockerrun.sh

build-ui:
	@scripts/build/ui.sh

build-docker:
	@docker-compose build

build:
	@make build-ui
	@make build-docker

deploy-ui:
	@scripts/deploy/ui.sh

deploy:
	@make deploy-ui

clean-ui-bucket:
	@scripts/misc/clean-ui-bucket.sh

jenkins:
	@docker-compose -f ci/docker-compose.yml up -d jenkins
	@open "http://127.0.0.1:8888"