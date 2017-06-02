run:
	@docker-compose up -d

dockerrun:
	@scripts/generate-dockerrun.sh

build-ui:
	@scripts/build/ui.sh

build:
	@make build-ui
	@docker-compose build

deploy-ui:
	@scripts/deploy/ui.sh

deploy:
	@make deploy-ui

clean-ui-bucket:
	@scripts/misc/clean-ui-bucket.sh

jenkins:
	@docker-compose -f ci/docker-compose.yml up -d jenkins
	@open "http://127.0.0.1:8888"