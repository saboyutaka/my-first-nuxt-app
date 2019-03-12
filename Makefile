.DEFAULT_GOAL := help

build: ## build develoment environment with laradock
	if ! [ -f .env ];then cp .env.example .env;fi
	docker-compose run --rm yarn install

serve: ## Run Server
	docker-compose up app

yarn-install: ## Run yarn install
	docker-compose run --rm yarn install

vue: ## Run vue command
	docker-compose run --rm vue

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
