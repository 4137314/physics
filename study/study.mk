ST_NAME := physics
ST_STATE := $(or $(XDG_STATE_HOME),$(HOME)/.local/state)/$(ST_NAME)-emacs
ST_APPS := $(or $(XDG_DATA_HOME),$(HOME)/.local/share)/applications
ST_DESKTOP := $(ST_APPS)/$(ST_NAME).desktop
ST_BIN := $(ST_STATE)/profile/bin/$(ST_NAME)-study
# Use the shared local reader when present, as Cerebro does.
KB ?= $(abspath $(ROOT)/../../personal/knowledge-base)
OVERRIDE := $(if $(wildcard $(KB)/flake.nix),--override-input knowledge-base "path:$(KB)")
NIX := nix --no-warn-dirty
# path: also works before this existing study folder becomes its own repository.
ST_FLAKE := path:$(ROOT)

study: ## open the Physics knowledge base
	PHYSICS_ROOT="$(ROOT)" $(NIX) run "$(ST_FLAKE)#study" $(OVERRIDE) --no-write-lock-file

study-check: ## check metadata, links, prerequisites, formulas and diagrams
	PHYSICS_ROOT="$(ROOT)" $(NIX) run "$(ST_FLAKE)#study" $(OVERRIDE) --no-write-lock-file -- --check

study-install: ## build, check and add Physics to the application launcher
	mkdir -p "$(ST_STATE)" "$(ST_APPS)"
	$(NIX) build "$(ST_FLAKE)#study" $(OVERRIDE) --no-write-lock-file -o "$(ST_STATE)/profile"
	PHYSICS_ROOT="$(ROOT)" "$(ST_BIN)" --check
	sed -e 's|@ROOT@|$(ROOT)|g' -e 's|@BIN@|$(ST_BIN)|g' \
	  "$(ROOT)/study/physics.desktop.in" > "$(ST_DESKTOP)"
	-update-desktop-database "$(ST_APPS)" 2>/dev/null
	@echo "installed: $(ST_DESKTOP)"

study-uninstall: ## remove the launcher and profile, keeping notes and reading state
	rm -f -- "$(ST_DESKTOP)" "$(ST_STATE)/profile"

.PHONY: study study-check study-install study-uninstall
