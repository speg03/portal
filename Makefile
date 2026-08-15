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
	uv run zensical build --clean --strict

.PHONY: serve
serve:
	uv run zensical serve
