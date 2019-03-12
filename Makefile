.DEFAULT_GOAL := help

build: yarn-install ## build develoment environment with laradock

serve: ## Run Server
	docker-compose up app

yarn-install: ## Run yarn install
	docker-compose run --rm yarn install

vue: ## Run vue command
	docker-compose run --rm vue

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
