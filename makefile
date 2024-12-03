PHONY: vscode-init publish run

vscode-init:
	@echo "Initializing vscode..."
	@if [ -f .vscode/settings.json ]; then \
		read -p "settings.json already exists. Do you want to delete it? [y/N] " response; \
		if [ "$$response" = "y" ]; then \
			rm .vscode/settings.json; \
		else \
			echo "Aborted."; \
			exit 1; \
		fi; \
	fi
	@cp .vscode/settings.template.json .vscode/settings.json
	@echo "Done!"

build:
	@echo "Building..."
	@python -m build
	@echo "Done!"

publish:
	@echo "Publishing..."
	@python -m twine upload dist/*
	@echo "Done!"

