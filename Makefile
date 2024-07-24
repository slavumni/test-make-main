.DEFAULT_GOAL := help

-include docker.mk

help: ## Show this help
	@printf "\033[33m%s:\033[0m\n" 'Available commands:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
