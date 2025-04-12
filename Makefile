.PHONY: all clean requirements site serve

all: site
clean:
	rm -rf ./site

requirements:
	uv pip compile -U pyproject.toml -o requirements.txt

site:
	mkdocs build --verbose --strict

serve:
	mkdocs serve
