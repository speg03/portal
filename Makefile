.PHONY: all
all: site

.PHONY: clean
clean:
	rm -rf ./site

.PHONY: install
install:
	uv sync

.PHONY: deps
deps:
	uv lock --upgrade

.PHONY: site
site:
	uv run mkdocs build --verbose --strict

.PHONY: serve
serve:
	uv run mkdocs serve
