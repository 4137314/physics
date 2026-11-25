SHELL := bash
.SHELLFLAGS := -euo pipefail -c

help: ## list the targets
	@awk 'BEGIN{FS=":.*## "} /^[a-zA-Z0-9_-]+:.*## /{printf "  %-20s %s\n",$$1,$$2}' $(MAKEFILE_LIST) | sort

.PHONY: help
